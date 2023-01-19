if status is-interactive
    /opt/homebrew/bin/brew shellenv | source

    if type -q "pyenv"
        pyenv init --path | source
    end

    if test -e "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
        source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"
    end

    starship init fish | source
end
