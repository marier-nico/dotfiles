function wacom --description "Map the tablet to a given monitor"
    set input_id (xinput list | awk "/Wacom Intuos S 2 Pen stylus/ { print \$9 }" | sed "s/id=//")
    set displays (xrandr | awk "\$2 ~ /^connected\$/ { print \$1 }")

    for i in (seq (count $displays))
        echo "[$i]" $displays[$i]
    end
    read -l -P "Which display should I map it to: " selected

    if ! echo $selected | grep -Pq "^\d+\$" || test $selected -gt (count $displays) || test $selected -lt 1
        echo "Please choose within the list."
        return 1
    end

    return (xinput map-to-output $input_id $displays[$selected])
end
