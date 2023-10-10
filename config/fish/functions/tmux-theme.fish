function tmux-theme --argument theme
  # sed doesn't like symlinks, get the absolute path
  set -l theme_path (realpath ~/.config/tmux/theme.conf)
  set -l config_path (realpath ~/.config/tmux/tmux.conf)

  sed -i "" -e "s;\(.*\)#color\$;set -g @catppuccin_flavour '$theme' #color;g" $theme_path
  tmux source-file $config_path

  echo "switched to $theme."
end 
