#!/usr/bin/sh

CONFIG_DIR=$XDG_CONFIG_HOME
if [ -z "${CONFIG_DIR}" ]; then
    CONFIG_DIR="$HOME/.config"
fi
mkdir -p "$CONFIG_DIR/autorandr"

fingerprint=$(xrandr --verbose | grep -A 8 "EDID" | sed -r "s/EDID//" | tr -d "[:space:]:-")

function save {
    profile_name=$1
    if [ -z "$profile_name" ]; then
        echo "A profile name is required to save the current configuration"
        exit 1
    fi

    profile_dir="$CONFIG_DIR/autorandr/$profile_name"
    mkdir -p $profile_dir
    echo $fingerprint > "$profile_dir/fingerprint"

    echo "Launching arandr, please save your config here :"
    echo "$profile_dir/config.sh"
    echo ""
    echo "Press any key to continue."
    read -n 1 -s

    arandr
    exit $?
}

function detected {
    for profile_dir in $(find $CONFIG_DIR/autorandr/* -type d)
    do
        if [ "$fingerprint" == "$(cat $profile_dir/fingerprint)" ]; then
            echo "$(basename $profile_dir)"
            exit 0
        fi
    done

    echo "No profile detected"
    exit 1
}

function load {
    profile_name=$1
    if [ -z "$profile_name" ]; then
        echo "A profile name is required to load its configuration"
        exit 1
    fi

    profile_dir="$CONFIG_DIR/autorandr/$profile_name"

    if [ -f "$profile_dir/config.sh" ]; then
        notify-send "Monitor config updated" "New selected profile is $(basename $profile_dir)"
        sh "$profile_dir/config.sh"

        exit $?
    fi

    echo "No such profile exists"
    exit 1
}

function change {
    for profile_dir in $(find $CONFIG_DIR/autorandr/* -type d)
    do
        if [ "$fingerprint" == "$(cat $profile_dir/fingerprint)" ]; then
            sh "$profile_dir/config.sh"
            notify-send "Monitor config updated" "New selected profile is $(basename $profile_dir)"
            exit 0
        fi
    done

    notify-send "Monitor config updated" "No profile for this config found, using xrandr --auto"
    echo "No profile detected, using xrandr --auto"
    xrandr --auto
    exit $?
}

case "$1" in
"--save")
    save $2
    ;;
"--load")
    load $2
    ;;
"--change")
    change
    ;;
"--detected")
    detected
    ;;
*)
    echo "Use an option from this list : [--save, --load, --change, --detected]"
esac
