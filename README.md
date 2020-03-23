## dotfiles

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
3. Download my wallpaper [here](https://www.reddit.com/r/wallpapers/comments/ebvk0q/rocket_launch_1920x1080/).
4. Download some icons that you like, I use
   [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/).
5. Download a nice gtk theme, mine is [Nordic](https://github.com/EliverLara/Nordic).
6. Use `lxappearance` to select the right gtk theme.

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

**Backup & Sync**

- [awscli](https://github.com/aws/aws-cli)
- [borg](https://github.com/borgbackup/borg)
- [syncthing](https://github.com/syncthing/syncthing) [ [arch package](https://www.archlinux.org/packages/community/x86_64/syncthing/) ]

**Desktop**

- [xfce4](https://xfce.org/) [ [arch wiki](https://wiki.archlinux.org/index.php/Xfce) ]
- [albert](https://albertlauncher.github.io/)
- [picom](https://github.com/yshui/picom) [ [arch package](https://www.archlinux.org/packages/community/x86_64/picom/) ]
- firefox [ [arch wiki](https://wiki.archlinux.org/index.php/Firefox) ]
- gtk [ [arch wiki](https://wiki.archlinux.org/index.php/GTK) ]
- lxappearance [ [arch package](https://www.archlinux.org/packages/community/x86_64/lxappearance/) ]
- [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/)
- [ranger](https://ranger.github.io/) [ [arch wiki](https://wiki.archlinux.org/index.php/Ranger) ]
- **Fonts**
  - [Iosevka](https://typeof.net/Iosevka/)
  - [JoyPixels](https://www.joypixels.com/) (emoji) [ [AUR](https://www.archlinux.org/packages/community/any/ttf-joypixels/) ]

**Documents**

- [xreader](https://github.com/linuxmint/xreader/) [ [arch package](https://www.archlinux.org/packages/community/x86_64/xreader/) ]
- [xournal++](https://github.com/xournalpp/xournalpp)

**Editor & Code**

- [git](https://github.com/git/git) [ [arch wiki](https://wiki.archlinux.org/index.php/Git) ]
- [neovim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [vscode](https://github.com/microsoft/vscode) [ [arch wiki](https://wiki.archlinux.org/index.php/Visual_Studio_Code) ]

**Media**

- [vlc](https://www.videolan.org/vlc/)
- [spicetify-cli](https://github.com/khanhas/spicetify-cli)
- spotify [ [aur package](https://aur.archlinux.org/packages/spotify/) ]

**Misc**

- [acpilight](https://gitlab.com/wavexx/acpilight) [ [arch package](https://www.archlinux.org/packages/community/any/acpilight/) ]
- [yay](https://github.com/Jguer/yay)
- [xclip](https://github.com/astrand/xclip) [ [arch package](https://www.archlinux.org/packages/extra/x86_64/xclip/) ]
- xrandr [ [arch wiki](https://wiki.archlinux.org/index.php/Xrandr) ]

**Plugins**

- **fisher**
  - [fish-ssh-agent](https://github.com/danhper/fish-ssh-agent)
  - [pure](https://github.com/rafaelrinaldi/pure)
- **vim-plug**
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
  - [nord](https://www.nordtheme.com/docs/ports/vim/installation)
    [ Nord colors have to be installed as the terminal color scheme before using this plugin. ]
- **vscode**
  - [Nord](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)

**Shell & Term**

- [fish](https://fishshell.com)
- [fisher](https://github.com/jorgebucaran/fisher)
- [alacritty](https://github.com/jwilm/alacritty)

**Social**

- [telegram](https://telegram.org/)
- [slack](https://slack.com/)

**Themes**

- Firefox [Humble Nord](https://addons.mozilla.org/en-US/firefox/addon/humble-nord/).
- Slack [Nord](https://www.nordtheme.com/docs/ports/slack/installation).
- Spotify [Nord](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Nord).
- Telegram [Telegram Nord Theme](https://github.com/gilbertw1/telegram-nord-theme).

## Details

### Backlight

By default, only root has access to change the scren brightness. To allow other users to do it without sudo (which will be
necessary to use keyboard shortcuts), follow instructions on the [wiki](https://wiki.archlinux.org/index.php/Backlight#ACPI).

### Fish Functions

I added some functions to Fish for convenience. Some are just aliases, some are small scripts which just make
life that much easier.

- `clip.fish` [ A nice alias for the X clipboard. Things can be piped to it to add them to the clipboard. ]
- `ranger.fish` [ A simple alias for ranger to remain in the same directory on exit. ]
- `wacom.fish` [ A small script to map my Wacom tablet to a given display. If you choose to use this, make
  sure you edit it so it works with your tablet. It's very simple to do, just edit the `awk` command.
  You should change what I put there for the name of your own stylus. You can find it with `xinput list`. ]

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
Make sure those variables don't exist before running the command or it won't work. If they
already exist, follow the instructions [here](https://fishshell.com/docs/current/faq.html#why-doesn-t-set-ux-exported-universal-variables-seem-to-work).

1. `set -Ux SHELL /usr/bin/fish`
2. `set -Ux XDG_CONFIG_HOME \$HOME/.config`
