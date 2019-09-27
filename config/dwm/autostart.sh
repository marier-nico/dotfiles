#!/bin/bash

feh --no-fehbg --bg-scale $HOME/Pictures/*.{jpg,png}

setxkbmap ca
xset r rate  150 30
xsetwacom --set "Wacom Intuos S 2 Pad pad" Button 1 "key +ctrl z -ctrl"
xsetwacom --set "Wacom Intuos S 2 Pad pad" Button 3 "key +ctrl y -ctrl"

dunst &
source ~/.dwm/dwm_status.sh &
