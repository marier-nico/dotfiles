function alacritty-theme --argument theme
  # sed doesn't like symlinks, get the absolute path
  set -l config_path (realpath ~/.config/alacritty/theme.toml)

  sed -i "" -e "s;\[\(.*\)\] #color;\[\"$theme\"\] #color;g" $config_path

  echo "switched to $theme."
end 
