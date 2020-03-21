function ranger --description "Exit ranger in the last visited dir"
    command ranger --choosedir=$HOME/.config/ranger/.rangerdir;
    cd (cat $HOME/.config/ranger/.rangerdir);
end
