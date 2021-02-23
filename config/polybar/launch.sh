#!/bin/sh

interfaces=$(ip addr | grep -i 'inet ' | awk '{print $NF}' | sort -u | grep -iv 'lo')
eth=$(echo $interfaces | grep 'enp\|enx\|eth' | head -n 1)
wlp=$(echo $interfaces | grep 'wlp' | head -n 1)

first_monitor="yes"
for m in $(polybar --list-monitors | cut -d":" -f1 | sort); do
    if [ "$first_monitor" == "yes" ]; then
        export TRAY_POSITION="right"
        first_monitor="no"
    else
        unset TRAY_POSITION
    fi

    MONITOR=$m polybar --reload workspaces &
    MONITOR=$m WIRELESS_INTERFACE=$wlp WIRED_INTERFACE=$eth polybar --reload system &
done