if status is-interactive
    /opt/homebrew/bin/brew shellenv | source

    fnm env --shell fish | source
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

# pnpm
set -gx PNPM_HOME "/Users/nmarier/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
