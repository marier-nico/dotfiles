if status is-interactive
    /opt/homebrew/bin/brew shellenv | source

    direnv hook fish | source

    fnm env --use-on-cd --shell fish | source
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
