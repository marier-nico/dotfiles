if status is-interactive
    /opt/homebrew/bin/brew shellenv | source
    pyenv init --path | source
    source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
    set PATH $PATH /Users/nmarier/.local/bin
    set PATH $PATH /Users/nmarier/.cargo/bin
end
