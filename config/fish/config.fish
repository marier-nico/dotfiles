if status is-interactive
    pyenv init --path | source
    pyenv init - | source

    venv-wrapper init fish | source
    venv completions
end

thefuck --alias | source

source /usr/share/fish/vendor_conf.d/autojump.fish
