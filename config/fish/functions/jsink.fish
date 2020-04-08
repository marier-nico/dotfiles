function jsink --description "Add or remove JACK sinks in pulseaudio" -a command sink_name
    ######################
    #  Helper functions  #
    ######################

    function usage --description "Print usage with an optional help message first"
        echo $argv[1]
        echo "Usage: jsink COMMAND [SINK_NAME]"
        echo "  COMMAND : {mk, rm, ls}"
        echo "  SINK_NAME : the name of the sink to add or remove"
        echo "              (not required for ls). For mk or rm, this"
        echo "              should not include `Jack sync` or the parens."
        echo "              Only the name in parens should be provided."
    end

    function rmsink --description "Remove a given jack sink (find the corresponding module and unload it)"
        # We expect the sinks and owning modules to be in the same order,
        # this means that the pactl command should return sinks in the same
        # order every time it is run. This seems like a safe assumption to make.
        set sinks (pactl list sinks | grep "Description: " | sed "s/\sDescription: //")
        set owning_modules (pactl list sinks | grep "Owner Module: " | sed "s/\sOwner Module: //")

        # Find the index that corresponds to our sink name and unload
        # the module at that index (which should be the module for our sink).
        for i in (seq (count $sinks))
            if echo "$sinks[$i]" | grep -q "Jack sink ($argv[1])"
                pactl unload-module $owning_modules[$i]
                return 0
            end
        end
        return 1
    end

    #############
    #  Program  #
    #############

    if [ -z "$command" ]
        usage "Missing command"; and return 1
    end

    switch $command
        case "mk"
            if [ -z "$sink_name" ]
                usage "Missing sink name"; and return 1
            end
            pactl load-module module-jack-sink client_name=$sink_name connect=yes
            echo "Created sink $sink_name"

        case "rm"
            if [ -z "$sink_name" ]
                usage "Missing sink name"; and return 1
            end
            if rmsink $sink_name
                echo "Removed sink $sink_name"
            else
                echo "Could not find sink $sink_name"
                return 1
            end

        case "ls"
            pactl list sinks | grep "Description: Jack sink (" | sed "s/\sDescription: //"
        case "*"
            usage "Unrecognized command"; and return 1
    end

    functions -e usage
    functions -e rmsink
    return 0
end
