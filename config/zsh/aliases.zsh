# Modern CLI Utils
alias cat="bat"
alias ls="exa"
alias find="fd"
alias grep="rg"

# Convenience Aliases
alias ll="ls -l"
alias la="ls -la"
alias ssh='TERM=xterm-256color \ssh'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=$(cat $HOME/.rangerdir); cd "$LASTDIR"'
