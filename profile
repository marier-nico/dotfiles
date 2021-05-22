#!/usr/bin/sh

path+=("$HOME/.local/bin" "$HOME/.amplify/bin")
source "$HOME/.cargo/env"
export PATH

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

export _JAVA_AWT_WM_NONREPARENTING=1
