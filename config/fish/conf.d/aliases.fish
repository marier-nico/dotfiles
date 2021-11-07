# Git aliases

alias g="git"
alias gs="g status"
alias gst="g stash"
alias gbr="g branch"
alias gco="g commit --verbose"
alias gca="g add -A; and gco"
alias gch="g checkout"
alias gd="g diff"
alias gl="g log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias gm="g merge"
alias gpo="g push -u origin HEAD"
alias grb="g rebase -i"
alias gr="cd (g rev-parse --show-toplevel)"
 
# Other aliases
 
alias ssh="TERM=xterm-256color command ssh"
