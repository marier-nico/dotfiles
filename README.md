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

- [bspwm](https://github.com/baskerville/bspwm) [ [arch wiki](https://wiki.archlinux.org/index.php/Bspwm) ]
- [sxhkd](https://github.com/baskerville/sxhkd) [ [arch wiki](https://wiki.archlinux.org/index.php/sxhkd) ]
- [polybar](https://github.com/polybar/polybar) [ [arch wiki](https://wiki.archlinux.org/index.php/polybar) ]
- [rofi](https://github.com/davatorium/rofi) [ [arch wiki](https://wiki.archlinux.org/index.php/Rofi) ]
- [picom](https://github.com/yshui/picom) [ [arch package](https://www.archlinux.org/packages/community/x86_64/picom/) ]
- firefox [ [arch wiki](https://wiki.archlinux.org/index.php/Firefox) ]
- gtk [ [arch wiki](https://wiki.archlinux.org/index.php/GTK) ]
- lxappearance [ [arch package](https://www.archlinux.org/packages/community/x86_64/lxappearance/) ]
- [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/)
- [ranger](https://ranger.github.io/) [ [arch wiki](https://wiki.archlinux.org/index.php/Ranger) ]
- **Fonts**
  - [FontAwesome](https://fontawesome.com) [ [arch package](https://www.archlinux.org/packages/community/any/ttf-font-awesome/) ]
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
- [bitwarden-cli](https://help.bitwarden.com/article/cli/) [ [AUR](https://aur.archlinux.org/packages/bitwarden-cli/) ]
- [bitwarden-rofi](https://github.com/mattydebie/bitwarden-rofi) [ [AUR](https://aur.archlinux.org/packages/bitwarden-rofi) ]
- [yay](https://github.com/Jguer/yay)
- [xclip](https://github.com/astrand/xclip) [ [arch package](https://www.archlinux.org/packages/extra/x86_64/xclip/) ]
- xrandr [ [arch wiki](https://wiki.archlinux.org/index.php/Xrandr) ]
- arandr [ [arch package](https://www.archlinux.org/packages/community/any/arandr/) ]

**Plugins**

- **fisher**
  - [fish-ssh-agent](https://github.com/danhper/fish-ssh-agent)
  - [pure](https://github.com/rafaelrinaldi/pure)
- **tmux**
  - [tpm](https://github.com/tmux-plugins/tpm)
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
  - [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
  - [nord-tmux](https://github.com/arcticicestudio/nord-tmux)
- **vim-plug**
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
  - [nord](https://www.nordtheme.com/docs/ports/vim/installation)
    [ Nord colors have to be installed as the terminal color scheme before using this plugin. ]
- **vscode**
  - [Nord](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)

**Shell & Term**

- [alacritty](https://github.com/jwilm/alacritty)
- [fish](https://fishshell.com)
- [fisher](https://github.com/jorgebucaran/fisher)
- [tmux](https://github.com/tmux/tmux/wiki) [ [arch wiki](https://wiki.archlinux.org/index.php/Tmux) ]

**Social**

- [telegram](https://telegram.org/)
- [slack](https://slack.com/)

**Themes**

- Firefox [Humble Nord](https://addons.mozilla.org/en-US/firefox/addon/humble-nord/).
- Rofi [Slate](https://github.com/davatorium/rofi-themes/blob/master/User%20Themes/slate.rasi) (included in this repo).
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
- `jsink.fish` [ A script to add/remove/list JACK-enabled PulseAudio sinks. This enables moving audio from
                 specific applications through JACK easily, which allows fine-grained processing. For example,
                 sending audio from a music player through a DAW before combining it with a microphone input
                 for live streaming. ]
- `ranger.fish` [ A simple alias for ranger to remain in the same directory on exit. ]
- `ssh.fish` [ An alias for SSH to set `$TERM` to `xterm-256color` to ensure compatibility on remote hosts 
-              (instead of using `alacritty` which requires adding something to the terminfo entries). ]
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
5. Edit `root`'s crontab to run `anacron` every minute, which might look like this :
   - `* * * * * anacron`
6. Edit `/etc/anacrontab` to make sure the backup runs at the frequency you want it to.
   Here is an example :
   - `@daily 5 backup.daily su -c "/usr/bin/flock -n /tmp/lock.backup /home/{path to script}/backup.sh" -s /bin/sh {your username}`
   - The `flock` part is important because you don't want to run two backups at the same time.
     This will also run the backup script as your own user, so you will still own the borg archive.
   - Also, if you want to receive a notification that the backup completed with logs,
     you can add `&& {command to send yourself an email}` after the script, or something similar.
     The other option for emails is to configure a mail server that makes the `sendmail` command
     available, though this option is a lot more complicated to set-up.
7. Enable cron with `sudo systemctl enable cronie` and `sudo systemctl start cronie`.

**Why run anacron as root?** : This is usually how it's done, which is written down in the man page.

#### env variables

Environment variables should be modified to make sure everything works well in this setup.
Make sure those variables don't exist before running the command or it won't work. If they
already exist, follow the instructions [here](https://fishshell.com/docs/current/faq.html#why-doesn-t-set-ux-exported-universal-variables-seem-to-work).

1. `set -Ux SHELL /usr/bin/fish`
2. `set -Ux XDG_CONFIG_HOME \$HOME/.config`