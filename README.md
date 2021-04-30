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

**Desktop**

- [birdtray](https://github.com/gyunaev/birdtray) [ [AUR](https://aur.archlinux.org/packages/birdtray) ]
- [bspwm](https://github.com/baskerville/bspwm) [ [arch wiki](https://wiki.archlinux.org/index.php/Bspwm) ]
- [betterlockscreen](https://github.com/pavanjadhaw/betterlockscreen) [ [aur package](https://aur.archlinux.org/packages/betterlockscreen/) ]
- firefox [ [arch wiki](https://wiki.archlinux.org/index.php/Firefox) ]
- gtk [ [arch wiki](https://wiki.archlinux.org/index.php/GTK) ]
- [babita cursor](https://github.com/ful1e5/Bibata_Cursor)
- lxappearance [ [arch package](https://www.archlinux.org/packages/community/x86_64/lxappearance/) ]
- [nitrogen](https://github.com/l3ib/nitrogen/) [ [arch wiki](https://wiki.archlinux.org/index.php/Nitrogen) ]
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

- PipeWire [ [arch wiki](https://wiki.archlinux.org/index.php/PipeWire) ]
- [PulseEffects](https://github.com/wwmm/pulseeffects) [ [arch package](https://archlinux.org/packages/community/x86_64/pulseeffects/) ]
- [spicetify-cli](https://github.com/khanhas/spicetify-cli)
- spotify [ [aur package](https://aur.archlinux.org/packages/spotify/) ]
- [vlc](https://www.videolan.org/vlc/)

**Misc**

- [acpilight](https://gitlab.com/wavexx/acpilight) [ [arch package](https://www.archlinux.org/packages/community/any/acpilight/) ]
- arandr [ [arch package](https://www.archlinux.org/packages/community/any/arandr/) ]
- [bitwarden-cli](https://help.bitwarden.com/article/cli/) [ [AUR](https://aur.archlinux.org/packages/bitwarden-cli/) ]
- [bitwarden-rofi](https://github.com/mattydebie/bitwarden-rofi) [ [AUR](https://aur.archlinux.org/packages/bitwarden-rofi) ]
- [seahorse](https://wiki.gnome.org/Apps/Seahorse) [ [arch package](https://archlinux.org/packages/extra/x86_64/seahorse/) ]
  - [libgnome-keyring](https://gitlab.gnome.org/GNOME/libgnome-keyring) [ [arch package](https://archlinux.org/packages/extra/x86_64/libgnome-keyring/) ]
  - [dconf-editor](https://wiki.gnome.org/Apps/DconfEditor) [ [arch package](https://archlinux.org/packages/extra/x86_64/dconf-editor/) ]
- [xclip](https://github.com/astrand/xclip) [ [arch package](https://www.archlinux.org/packages/extra/x86_64/xclip/) ]
- xrandr [ [arch wiki](https://wiki.archlinux.org/index.php/Xrandr) ]
- [paru](https://github.com/morganamilo/paru)

**Plugins**

- **neovim**
  - [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
  - [nerdtree](https://github.com/preservim/nerdtree)
  - [onedark](https://github.com/joshdick/onedark.vim)
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [vim-plug](https://github.com/junegunn/vim-plug)
  - [vim-polyglot](https://github.com/sheerun/vim-polyglot)
- **python**
  - [pyenv](https://github.com/pyenv/pyenv)
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

- [alacritty](https://github.com/alacritty/alacritty)
- [bat](https://github.com/sharkdp/bat)
- [bottom](https://github.com/ClementTsang/bottom)
- [exa](https://github.com/ogham/exa)
- [fd](https://github.com/sharkdp/fd)
- [hyperfine](https://github.com/sharkdp/hyperfine)
- [procs](https://github.com/dalance/procs)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [tealdeer](https://github.com/dbrgn/tealdeer)
- [tmux](https://github.com/tmux/tmux/wiki) [ [arch wiki](https://wiki.archlinux.org/index.php/Tmux) ]
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [zsh](https://wiki.archlinux.org/index.php/zsh)

**Social**

- [Discord](https://discord.com/)
- [Slack](https://slack.com/)
- [Telegram](https://telegram.org/)

**Themes**

- GTK [Nordic](https://github.com/EliverLara/Nordic).
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

- `wacom` [ A small script to map my Wacom tablet to a given display and map buttons to keyboard shortcuts.
            If you choose to use this, make sure you edit it so it works with your tablet. As long as you
            just have one tablet at a time, mapping to a display will always work. However, button IDs are
            inconsistent between tablets, so you can use `xev -event button` and press buttons to see what
            the button IDs are for your tablet's physical buttons. Once you know which IDs your button has,
            you can replace mine in the script. ]

### Notes

#### Adding non-ldap keyservers in Seahorse

This is a bit counter-intuitive, but the settings need to manually be edited from the command-line.
Use `dconf-editor /desktop/gnome/crypto/pgp/keyservers` and manually add your keyserver to the
custom value.

#### backups

I've documented all my approach to backups in a blog post which you can read [here](https://blog.nmarier.com/2020/08/02/my-self-hosted-file-sharing-syncing-backup-solution/)!
