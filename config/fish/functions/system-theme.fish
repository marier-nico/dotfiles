function system-theme --argument mode_setting
  set -l mode "light"
  if test -z $mode_setting
    set -l val (defaults read -g AppleInterfaceStyle) 2>&1 >/dev/null
    if test $status -eq 0
      set mode "dark"
    end
  else
    switch $mode_setting
      case light
        osascript -l JavaScript -e "Application('System Events').appearancePreferences.darkMode = false" >/dev/null
        set mode "light"
      case dark
        osascript -l JavaScript -e "Application('System Events').appearancePreferences.darkMode = true" >/dev/null
        set mode "dark"
    end
  end

  switch $mode
    case dark
      alacritty-theme "~/.config/alacritty/catpuccin/catppuccin-macchiato.yml"
    case light
      alacritty-theme "~/.config/alacritty/catpuccin/catppuccin-latte.yml"
  end
end
