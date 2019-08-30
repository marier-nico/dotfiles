#!/bin/bash

feh --no-fehbg --bg-scale $HOME/Pictures/*.{jpg,png}

setxkbmap ca
xset r rate  150 30

dunst &
source ~/.dwm/dwm_status.sh &