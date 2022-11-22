if status is-interactive
    /opt/homebrew/bin/brew shellenv | source
    source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

    if type -q "pyenv"
        pyenv init --path | source
    end

    set PATH $PATH $HOME/.local/bin
    set PATH $PATH $HOME/.cargo/bin
    set nvm_default_version lts
end

nvm use default --silent
