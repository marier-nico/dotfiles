function ranger --description "Exit ranger in the last visited dir"
    command ranger --choosedir=$HOME/.config/ranger/.rangerdir $argv;
    cd (cat $HOME/.config/ranger/.rangerdir);
end
