#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# To have commands starting with `rm -rf` in red:
ZSH_HIGHLIGHT_PATTERNS+=('rm *' 'fg=white,bold,bg=red')
# To have commands starting with 'pacman -R' and 'yay -R' in red
ZSH_HIGHLIGHT_PATTERNS+=('pacman -R*' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('yay -R*' 'fg=white,bold,bg=red')
# So that vim starte neovim
alias vim='nvim'
alias vi='nvim'
