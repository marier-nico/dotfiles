function ssh --description "Alias SSH with xterm TERM env variable"
    set TERM xterm-256color
    command ssh $argv
end
