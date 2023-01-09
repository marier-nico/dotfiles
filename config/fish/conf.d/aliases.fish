# Directory aliases

set -q CODE_DIR; or set CODE_DIR $HOME/Code
function gc
    if set -q argv[1]
        cd $CODE_DIR/$argv[1]
    else
        cd $CODE_DIR
    end
end
complete -e gc
complete -c gc -f
complete -c gc --arguments '(ls -1 -d -- $CODE_DIR/* | sed -e "s=$CODE_DIR/==g" | xargs -n 1 -I{} printf "%s\tProject\n" {})'

# Git aliases

alias g="git"
alias ga="git add"
alias gs="g status"
alias gst="g stash"
alias gbr="g branch"
alias gco="g commit -S --verbose"
alias gca="g add -A && gco"
alias gch="g checkout"
alias gd="g diff"
alias gl="g log --show-signature"
alias glg="g log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
alias gm="g merge"
alias gpo="g push -u origin HEAD"
alias gpu="g pull origin HEAD"
alias grb="g rebase -i"
alias gr="cd (g rev-parse --show-toplevel)"

# Go aliases

alias go16="/opt/homebrew/Cellar/go@1.16/1.16.11/libexec/bin/go"
 
# Other aliases
 
alias ssh="TERM=xterm-256color command ssh"
