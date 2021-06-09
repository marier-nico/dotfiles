# Disable greeting
set fish_greeting

# Set env
set PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/.amplify/bin $PATH

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx _JAVA_AWT_WM_NONREPARENTING 1

# Set aliases
alias cat="bat"
alias ls="exa"
alias find="fd"
alias grep="rg"

alias ranger='ranger --choosedir=$HOME/.rangerdir; cd (cat $HOME/.rangerdir)'

alias ssh='TERM=xterm-256color command ssh'

# Source scripts
status is-login; and pyenv init --path | source
pyenv init - | source

thefuck --alias | source

source /usr/share/fish/vendor_conf.d/autojump.fish
