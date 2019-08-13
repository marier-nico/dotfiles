dotfiles
--------

### Intro

This README will serve as a reference for all the tools used in making this rice as well
as credits for inspiration and the location where specific tips and tricks were found. It
will also contain links to most resources used with this config (wallpapers, themes, etc.)

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

### Credits

- Wallpaper : https://www.reddit.com/r/wallpapers/comments/8r7p27/surviving_mars_3840x2160/

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

### TODO

This is just a list of things that are I should get around to doing with my dotfiles but
haven't had the time to do yet.

- [ ] Make packages for dwm and st with patches and config
- [ ] Customize rofi
- [ ] Make dotbot pull the wallpaper (shell command)
- [ ] Customize st colors
