if status is-interactive
    /opt/homebrew/bin/brew shellenv | source

    if type -q "pyenv"
        pyenv init --path | source
    end

    set -gx VOLTA_HOME "$HOME/.volta"
    set -gx PATH "$VOLTA_HOME/bin" $PATH

    set -g direnv_fish_mode disable_arrow
    direnv hook fish | source

    #starship init fish | source
end

source ~/.config/fish/functions/lucid-prompt.fish

# Suppress default mode prompt
function fish_mode_prompt
end


function fish_prompt
    if [ (tput cols) -le 100 ]
        echo '❯ '
    else
        lucid_fish_prompt
    end
end
