#!/bin/sh
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload workspaces &
    MONITOR=$m polybar --reload system &
done