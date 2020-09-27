function wacom --description "Map the tablet to a given monitor"
    set input_id (xinput list | grep "Wacom Intuos.*Pen stylus" | sed -rn 's/^.*id=([[:digit:]]+).*$/\1/p')
    set displays (xrandr | awk "\$2 ~ /^connected\$/ { print \$1 }")

    for i in (seq (count $displays))
        echo "[$i]" $displays[$i]
    end
    read -l -P "Which display should I map it to: " selected

    if ! echo $selected | grep -Pq "^\d+\$"; or test $selected -gt (count $displays); or test $selected -lt 1
        echo "Please choose within the list."
        return 1
    end

    return (xinput map-to-output $input_id $displays[$selected])
end
