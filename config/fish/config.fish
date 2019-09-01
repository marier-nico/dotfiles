#!/bin/fish

# make the del key work in st
tput smkx

# make gpg-agent work
set -g -x GPG_TTY (tty)

# install fisher if needed and download plugins
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
