#!/bin/sh

interfaces=$(ip addr | grep -i 'inet ' | grep -v 'lo$' | awk '{print $NF}' | sort -u)
eth=$(echo $interfaces | grep 'enp\|eth' | head -n 1)
wlp=$(echo $interfaces | grep 'wlp' | head -n 1)

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload workspaces &
    MONITOR=$m WIRELESS_INTERFACE=$wlp WIRED_INTERFACE=$eth polybar --reload system &
done