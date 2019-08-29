dotfiles
--------

### Intro

This README will serve as a reference for all the tools used in making this rice as well
as credits for inspiration and the location where specific tips and tricks were found. It
will also contain links to most resources used with this config (wallpapers, themes, etc.)

### Installation

**This is really important:** commands that are run by dotbot (in `install.conf.yaml`)
will be ran using the shell specified in `$SHELL`. I use [fish](https://fishshell.com), so the
shell commands will probably not work on other shells. Before running the install script,
edit the commands for your own shell, or switch to fish!

To install my configurations, you just have to clone this repo and run `./install`. I
recomment checking the `install.conf.yaml` file before blindly installing because it
will expect specific directories to exist which you might not have.

Also, don't forget to actually install the programs that I use with this configuration.
They are listed just below, and that list is kept up to date with what I use.

### Programs

- [dwm](https://github.com/marier-nico/dwm)
- [st](https://github.com/marier-nico/st)
- git
- feh
- rofi
- yay (AUR helper)
- firefox

### Firefox

To get my firefox theme, you can go to [this](https://color.firefox.com/?theme=XQAAAAIWAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xNKlhZYnAOn732nRq7cirz0ZuRwWq8W8Ouc_F0d-XEYZ_m2BKnldLTO0uJZe6andGnDj__jNufhqhMNf-QEvobYYRGK9Y-eJY00jtKmCshIEMuWEKcExB0kxk5CaoEtGB7GjJ2daxKypppjV8rh6dLuhR0EWmJigu-32akzGruxyAnW3V8Q7QqN56zlQRTHVroCwUaLdgeFQhbGbCJyJ633Jht-_HwIA) link.

### Fonts

All the special fonts I use will be listed here, such as patched fonts and icon fonts.

- [Hack](https://sourcefoundry.org/hack/)

### Credits

- Wallpaper: [Surviving Mars](https://www.reddit.com/r/wallpapers/comments/8r7p27/surviving_mars_3840x2160/)
- Terminal colorscheme: https://github.com/szorfein/dotfiles/blob/master/theme-empire/.colors/color

### Notes

#### wallpaper

The install script will download the current wallpaper that is linked in the
`current-wall-url` file if there are no png or jpg files in the top level of the Pictures
directory in your `$HOME`.

#### feh

The command that is run to set the wallpaper is in `config/dwm/autostart.sh`, and it sets
the first file in the directory as the wallpaper (I think). So only one file should be at
the top level of the `$HOME/Pictures` directory.

### For a full setup

#### pulseaudio

Pulseaudio should be installed to get audio output. A nice cli front-end for it is [pulsemixer](https://www.archlinux.org/packages/community/any/pulsemixer/). To get volume media keys to work, see the following [gist](https://gist.github.com/palopezv/efd34059af6126ad970940bcc6a90f2e).
