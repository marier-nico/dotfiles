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
3. Download my wallpaper [here](https://www.reddit.com/r/wallpapers/comments/h8ezpz/into_the_woods/).
4. Download some icons that you like, I use
   [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/).
5. Download a nice gtk theme, mine is [Nordic](https://github.com/EliverLara/Nordic).
6. Use `lxappearance` to select the right gtk theme.

### Install Script

To install my configurations, you just have to clone this repo and run `./install`. I
recommend checking the `install.conf.yaml` file before blindly installing because it
will expect specific directories to exist which you might not have. Also it's good
practice not to run random commands you find.

## Install List

**Backup & Sync**

- [awscli](https://github.com/aws/aws-cli)
- [borg](https://github.com/borgbackup/borg)
- [syncthing](https://github.com/syncthing/syncthing) [ [arch package](https://www.archlinux.org/packages/community/x86_64/syncthing/) ]

**Desktop**

- [awesomewm](https://awesomewm.org/) [ [arch wiki](https://wiki.archlinux.org/index.php/Awesome) ]
- [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen) [ [aur package](https://aur.archlinux.org/packages/betterlockscreen/) ]
- firefox [ [arch wiki](https://wiki.archlinux.org/index.php/Firefox) ]
- gtk [ [arch wiki](https://wiki.archlinux.org/index.php/GTK) ]
  - [Nordic](https://github.com/EliverLara/Nordic) (theme)
- [babita cursor](https://github.com/ful1e5/Bibata_Cursor)
- lxappearance [ [arch package](https://www.archlinux.org/packages/community/x86_64/lxappearance/) ]
- [papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/)
- [picom](https://github.com/yshui/picom) [ [arch package](https://www.archlinux.org/packages/community/x86_64/picom/) ]
- [ranger](https://ranger.github.io/) [ [arch wiki](https://wiki.archlinux.org/index.php/Ranger) ]
- [rofi](https://github.com/davatorium/rofi) [ [arch wiki](https://wiki.archlinux.org/index.php/Rofi) ]
- **Fonts**
  - [FontAwesome](https://fontawesome.com) [ [arch package](https://www.archlinux.org/packages/community/any/ttf-font-awesome/) ]
  - [Iosevka](https://typeof.net/Iosevka/)
  - [JoyPixels](https://www.joypixels.com/) (emoji) [ [AUR](https://www.archlinux.org/packages/community/any/ttf-joypixels/) ]

**Documents**

- [xournal++](https://github.com/xournalpp/xournalpp)
- [xreader](https://github.com/linuxmint/xreader/) [ [arch package](https://www.archlinux.org/packages/community/x86_64/xreader/) ]

**Editor & Code**

- [git](https://github.com/git/git) [ [arch wiki](https://wiki.archlinux.org/index.php/Git) ]
- [neovim](https://github.com/neovim/neovim)
- [vscode](https://github.com/microsoft/vscode) [ [arch wiki](https://wiki.archlinux.org/index.php/Visual_Studio_Code) ]

**Media**

- [spicetify-cli](https://github.com/khanhas/spicetify-cli)
- spotify [ [aur package](https://aur.archlinux.org/packages/spotify/) ]
- [vlc](https://www.videolan.org/vlc/)

**Misc**

- [acpilight](https://gitlab.com/wavexx/acpilight) [ [arch package](https://www.archlinux.org/packages/community/any/acpilight/) ]
- arandr [ [arch package](https://www.archlinux.org/packages/community/any/arandr/) ]
- [bitwarden-cli](https://help.bitwarden.com/article/cli/) [ [AUR](https://aur.archlinux.org/packages/bitwarden-cli/) ]
- [bitwarden-rofi](https://github.com/mattydebie/bitwarden-rofi) [ [AUR](https://aur.archlinux.org/packages/bitwarden-rofi) ]
- [xclip](https://github.com/astrand/xclip) [ [arch package](https://www.archlinux.org/packages/extra/x86_64/xclip/) ]
- xrandr [ [arch wiki](https://wiki.archlinux.org/index.php/Xrandr) ]
- [yay](https://github.com/Jguer/yay)

**Plugins**

- **neovim**
  - [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
  - [nerdtree](https://github.com/preservim/nerdtree)
  - [onedark](https://github.com/joshdick/onedark.vim)
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [vim-plug](https://github.com/junegunn/vim-plug)
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
- **python**
  - [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/)
- **tmux**
  - [tmux-onedark-theme](https://github.com/odedlaz/tmux-onedark-theme)
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect)
  - [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
  - [tpm](https://github.com/tmux-plugins/tpm)
- **vscode**
  - [Atom One Dark Theme](https://github.com/akamud/vscode-theme-onedark)
- **zsh**
  - [starship](https://starship.rs/)
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) [ [arch package](https://www.archlinux.org/packages/zsh-autosuggestions) ]
  - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) [ [arch package](https://www.archlinux.org/packages/?q=zsh-syntax-highlighting) ]

**Shell & Term**

- [kitty](https://sw.kovidgoyal.net/kitty/)
- [tmux](https://github.com/tmux/tmux/wiki) [ [arch wiki](https://wiki.archlinux.org/index.php/Tmux) ]
- [zsh](https://wiki.archlinux.org/index.php/zsh)

**Social**

- [Discord](https://discord.com/)
- [slack](https://slack.com/)
- [telegram](https://telegram.org/)

**Themes**

- Firefox [One Dark Theme](https://addons.mozilla.org/en-CA/firefox/addon/one-dark-theme/).
- Rofi [Slate](https://github.com/davatorium/rofi-themes/blob/master/User%20Themes/slate.rasi) (included in this repo).
- Slack [Nord](https://www.nordtheme.com/docs/ports/slack/installation).
- Spotify [Nord](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Nord).
- Telegram [Telegram Nord Theme](https://github.com/gilbertw1/telegram-nord-theme).

## Details

### Backlight

By default, only root has access to change the screen brightness. To allow other users to do it without sudo (which will be
necessary to use keyboard shortcuts), follow instructions on the [wiki](https://wiki.archlinux.org/index.php/Backlight#ACPI).

### Bash Scripts

I've created some scripts to make some operations more convenient for me, which can be found in the `bin/` folder.

- `jsink` [ A script to add/remove/list JACK-enabled PulseAudio sinks. This enables moving audio from
            specific applications through JACK easily, which allows fine-grained processing. For example,
            sending audio from a music player through a DAW before combining it with a microphone input
            for live streaming. ]
- `pg`    [ A script to manage GPG keys, which is friendlier, more efficient, and overall more convenient
            to use than the standard GPG CLI interface. ]
- `wacom` [ A small script to map my Wacom tablet to a given display and map buttons to keyboard shortcuts.
            If you choose to use this, make sure you edit it so it works with your tablet. As long as you
            just have one tablet at a time, mapping to a display will always work. However, button IDs are
            inconsistent between tablets, so you can use `xev -event button` and press buttons to see what
            the button IDs are for your tablet's physical buttons. Once you know which IDs your button has,
            you can replace mine in the script. ]

### Notes

#### backups

I've documented all my approach to backups in a blog post which you can read [here](https://blog.nmarier.com/2020/08/02/my-self-hosted-file-sharing-syncing-backup-solution/)!
