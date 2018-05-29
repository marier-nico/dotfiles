# dotfiles
## Introduction
Welcome to my dotfiles' repository. Everything you can see here is free to use, and I've linked credits to where I've gotten different parts of the setup. Feel free to gain inspiration from what you find, or simply copy the configurations that you like.

## Showcase
![clean](https://i.imgur.com/ImERvl2.png "clean")
![busy](https://i.imgur.com/cBrJDbR.png "busy")
![firefox](https://i.imgur.com/7EdFGcX.png "firefox")

## Credits
- Startpage was taken from [Jarvvski](https://github.com/Jarvvski/Start-Page)
- Wallpaper on [artstation](https://www.artstation.com/artwork/J3aRD)
- More wallpapers by [Arsenixc](https://www.artstation.com/arsenixc)
- Polybar look and terminal colors taken from [t60r](https://github.com/t60r/dots)
- Rofi theme taken from [rofi-themes](https://github.com/DaveDavenport/rofi-themes/blob/master/User%20Themes/arc-red-dark.rasi)

## Programs Used
- [arandr](https://www.archlinux.org/packages/community/any/arandr/)
- [xrandr](https://www.archlinux.org/packages/extra/x86_64/xorg-xrandr/)
- [feh](https://www.archlinux.org/packages/extra/x86_64/feh/)
- [srandrd](https://aur.archlinux.org/packages/srandrd/) (aur) : runs a script when a display is connected / disconnected
- [zsh](https://www.archlinux.org/packages/extra/x86_64/zsh/)
- [prezto](https://aur.archlinux.org/packages/prezto-git/) (aur)
- [polybar](https://aur.archlinux.org/packages/polybar/) (aur)
- [bspwm](https://www.archlinux.org/packages/community/x86_64/bspwm/)
- [sxhkd](https://www.archlinux.org/packages/community/x86_64/sxhkd/)
- [xscreensaver](https://aur.archlinux.org/packages/xscreensaver-arch-logo/) (aur)
- [backlight](https://github.com/baskerville/backlight) (github)
- [pavucontrol](https://www.archlinux.org/packages/extra/x86_64/pavucontrol/)
- [neovim](https://www.archlinux.org/packages/community/x86_64/neovim/)
- [rofi](https://www.archlinux.org/packages/community/x86_64/rofi/)
- [firefox](https://www.archlinux.org/packages/extra/x86_64/firefox/)
- [compton](https://www.archlinux.org/packages/community/x86_64/compton/)
- [powerline-fonts-git](https://aur.archlinux.org/packages/powerline-fonts-git/) (aur)

## Fonts Used
- [Wuncon Siji](https://github.com/stark/siji) -> used in polybar
- [SF Pro Display](https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts) -> used in rofi and polybar
- Source Code Pro (powerline-fonts) -> used in URxvt
- DejaVu Sans Mono (powerline-fonts) -> literally one character of the prompt in URxvt
- Noto Sans (powerline-fonts) -> literally one character of the prompt in URxvt
- [Maboroshi no Nijimi Mincho](http://www.fontna.com/blog/1912/) -> used in bspwm and polybar

Note : for the japanese font, look above the social sharing icons, there's a button-looking thing, which is the download button.

fonts go in /usr/share/fonts/

don't forget to fc-cache -vf /usr/share/fonts

## Icons
- Moka (for rofi)

Note : the icons need to be in ~/.local/share/icons instead of the install location (/usr/share/icons)
