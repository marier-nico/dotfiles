dotfiles
--------

## Intro

This README will serve as a reference for all the tools used in making this rice as well
as credits for inspiration and the location where specific tips and tricks were found. It
will also contain links to most resources used with this config (wallpapers, themes, etc.)

### Quick Start

1. Install the required packages. They can be found below. That list is kept current as
much as possible, but it is very much a "best effort", sometimes I forget things.
2. Run the install script from this repo, which will just create symlinks from the dotfiles
in this repo to the correct locations on your system. This is done with
[dotbot](https://git.io/dotbot).
3. Download my wallpaper [here](https://www.artstation.com/artwork/Y2Wew).
4. Download some icons that you like, I use
[papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/).
5. If this is your first time using `wpgtk`, run `wpg-install.sh -gd`. This will generate
themed configurations for `gtk` and `dunst`.
6. Use `lxappearance` to select the new gtk theme
7. Launch `wpg`, which comes from `wpgtk` (see the install list).
8. Add the wallpaper to `wpg`.
9. Import the colorscheme from `config/wpg/schemes/{whatever-scheme}` for the wallpaper
that you want.
10. Set the colorscheme, and everything should be updated.

### Install Script

**Note:** commands that are run by dotbot (in `install.conf.yaml`)
will be ran using the shell specified in `$SHELL`. I use [fish](https://fishshell.com), so the
shell commands will probably not work on other shells. Before running the install script,
edit the commands for your own shell, or switch to fish!

To install my configurations, you just have to clone this repo and run `./install`. I
recomment checking the `install.conf.yaml` file before blindly installing because it
will expect specific directories to exist which you might not have. Also it's good
practice not to run random commands you find.

## Install List

**Desktop**
- [bspwm](https://github.com/baskerville/bspwm) [arch wiki](https://wiki.archlinux.org/index.php/Bspwm)
- [compton](https://github.com/yshui/compton) [arch package](https://www.archlinux.org/packages/community/x86_64/compton/)
- [dunst](https://github.com/dunst-project/dunst) [arch wiki](https://wiki.archlinux.org/index.php/Dunst)
- [feh](https://github.com/derf/feh) [arch wiki](https://wiki.archlinux.org/index.php/Feh)
- firefox [arch wiki](https://wiki.archlinux.org/index.php/Firefox)
- gtk [arch wiki](https://wiki.archlinux.org/index.php/GTK)
- lxappearance [arch package](https://www.archlinux.org/packages/community/x86_64/lxappearance/)
- [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/)
- [polybar](https://github.com/polybar/polybar)
- [pulseaudio](https://wiki.archlinux.org/index.php/PulseAudio#Installation)
- [pulsemixer](https://github.com/GeorgeFilipkin/pulsemixer) [arch package](https://www.archlinux.org/packages/community/any/pulsemixer/)
- [ranger](https://ranger.github.io/) [arch wiki](https://wiki.archlinux.org/index.php/Ranger)
- [rofi](https://github.com/davatorium/rofi)
- [sxhkd](https://github.com/baskerville/sxhkd) [arch package](https://www.archlinux.org/packages/community/x86_64/sxhkd/)
- [wal](https://github.com/dylanaraps/pywal)
- [wpgtk](https://github.com/deviantfero/wpgtk) [aur package](https://aur.archlinux.org/packages/wpgtk-git)
- **Fonts**
    - [fira code](https://github.com/tonsky/FiraCode)
    - [hack](https://github.com/source-foundry/Hack)
    - [siji icons](https://github.com/stark/siji)

**Shell & Term**
- [fish](https://fishshell.com)
- [fisher](https://github.com/jorgebucaran/fisher)
- [kitty](https://github.com/kovidgoyal/kitty)

**Editor & Code**
- [git](https://github.com/git/git) [arch wiki](https://wiki.archlinux.org/index.php/Git)
- [neovim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vscode](https://github.com/microsoft/vscode) [arch wiki](https://wiki.archlinux.org/index.php/Visual_Studio_Code)

**Plugins**
- **fisher**
    - [fish-ssh-agent](https://github.com/danhper/fish-ssh-agent)
- **vim-plug**
    - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
    - [vimwiki](https://github.com/vimwiki/vimwiki)

**Backup & Sync**
- [awscli](https://github.com/aws/aws-cli)
- [borg](https://github.com/borgbackup/borg)
- [syncthing](https://github.com/syncthing/syncthing) [arch package](https://www.archlinux.org/packages/community/x86_64/syncthing/)

**Documents**
- [xreader](https://github.com/linuxmint/xreader/) [arch package](https://www.archlinux.org/packages/community/x86_64/xreader/)
- [xournal++](https://github.com/xournalpp/xournalpp)

**Media**
- [vlc](https://www.videolan.org/vlc/)
- [spicetify-cli](https://github.com/khanhas/spicetify-cli)
- spotify [aur package](https://aur.archlinux.org/packages/spotify/)

**Misc**
- [acpilight](https://gitlab.com/wavexx/acpilight) [arch package](https://www.archlinux.org/packages/community/any/acpilight/)
- [yay](https://github.com/Jguer/yay)

## Details

### Backlight

By default, only root has access to change the scren brightness. To allow other users to do it without sudo (which will be
necessary to use keyboard shortcuts), follow instructions on the [wiki](https://wiki.archlinux.org/index.php/Backlight#ACPI).

### Firefox

To get my firefox theme, you can go to [firefox color](https://color.firefox.com/?theme=XQAAAAIHAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xNKlhMjgHXI2DYk6tUZL6Q64nyQ2hKMbyHoF3iqKSvJpqQk4bH-Ju6kdCLi6ZGU--jWIuyt8Bn3a23SpS7NgVLQABQUEZL_JgkDv4bOxLMCM7-vEracUo1T_IZcK6FTQH8T6CpAjDcQfi1K1iCFP742dq6TL3Fgb9fcT0wXzv_TXD2qGNrapPpYLGVpeBJP1cNv__RVzIA).

### Spotify

To use my custom spotify theme, you'll have to install
[spicetify-cli](https://github.com/khanhas/spicetify-cli). It's an awesome tool that allows
the customization of spotify in many different ways, but I just use it for custom colors.

### Notes

#### backups

A backup solution is really important these days, so [cron](https://wiki.archlinux.org/index.php/Cron)
should be used to run daily backups. Those backups can be made using the `backup.sh` script
in this repo. For this to work, a few things have to be setup.

1. Have the [cronie](https://www.archlinux.org/packages/?name=cronie) package installed.
2. Have a [borg](https://borgbackup.readthedocs.io/en/stable/index.html) repo located at `~/.backup`.
3. Have your passphrase for the repo stored in `~/.config/borg/passphrase`.
4. Edit the line in `backup.sh` where the backup is uploaded to amazon s3 to make sure that :
    - You are using a bucket that you own.
    - You are using a profile with write access to that bucket.

#### env variables

Environment variables should be modified to make sure everything works well in this setup.

1. `set -Ux SHELL /usr/bin/fish`
2. `set -Ux fish_user_paths $HOME/.dots/bin $fish_user_paths` (this repo's `bin/` folder)
3. `set -Ux XDG_CONFIG_HOME $HOME/.config
