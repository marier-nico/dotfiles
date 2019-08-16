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

- dwm
	- autostart
	- titlecolor
- st
	- alpha (not yet added)
	- anysize (not yet added)
	- delkey (not yet added)
	- scrollback (not yet added)
- git
- feh
- rofi
- yay (AUR helper)

### Fonts

All the special fonts I use will be listed here, such as patched fonts and icon fonts.

- [Hack](https://sourcefoundry.org/hack/)

### Credits

- Wallpaper: [Surviving Mars](https://www.reddit.com/r/wallpapers/comments/8r7p27/surviving_mars_3840x2160/)

### Notes

#### dwm and st

Don't forget to edit the `Makefile` to remove `config.h` in the clean target and only edit
`config.def.h`.

#### wallpaper

The install script will download the current wallpaper that is linked in the
`current-wall-url` file if there are no png or jpg files in the top level of the Pictures
directory in your `$HOME`.

#### feh

The command that is run to set the wallpaper is in `config/dwm/autostart.sh`, and it sets
the first file in the directory as the wallpaper (I think). So only one file should be at
the top level of the `$HOME/Pictures` directory.
