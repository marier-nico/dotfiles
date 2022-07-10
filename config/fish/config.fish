if status is-interactive
    switch (uname)
        case Darwin
            /opt/homebrew/bin/brew shellenv | source
            source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
    end

    if type -q "pyenv"
        pyenv init --path | source
    end

    set PATH $PATH $HOME/.local/bin
    set PATH $PATH $HOME/.cargo/bin
end
