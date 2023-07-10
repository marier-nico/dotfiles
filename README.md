## dotfiles

## Intro

This README will serve as a reference for all the tools used in my day to day setup. It
will also contain links to most resources used with this config (fonts, editors, etc.)

### Quick Start

1. Install the required software. They can be found below. That list is kept current as
   much as possible, but it is very much a "best effort", sometimes I forget things.
2. Run the install script from this repo, which will just create symlinks from the dotfiles
   in this repo to the correct locations on your system. This is done with
   [dotbot](https://git.io/dotbot).

### Install Script

To install my configurations, you just have to clone this repo and run `./install`. I
recommend checking the `install.conf.yaml` file before blindly installing because it
will expect specific directories to exist which you might not have. Also it's good
practice not to run random scripts you find.

## Install List

**Desktop**

- [Firefox](https://www.mozilla.org/en-CA/firefox/new/)
- **Fonts**
  - [Fira Code Nerd Font](https://www.nerdfonts.com/)
    - `brew tap homebrew/cask-fonts`
    - `brew install --cask font-fira-code-nerd-font`  

**Editor & Code**

- [git](https://github.com/git/git)
- [neovim](https://github.com/neovim/neovim)
- [vscode](https://github.com/microsoft/vscode)
- JetBrains IDEs (Pycharm, Goland, Webstorm)

**Media**

- [Spotify](https://www.spotify.com/us/download)

**Plugins**

| Software  | Plugin                                                                      | Install                                                |
| --------- | --------------------------------------------------------------------------- | ------------------------------------------------------ |
| neovim    | [Lunar Vim](https://www.lunarvim.org/)                                      |
| python    | [pipx](https://github.com/pypa/pipx)                                        | `brew install pipx`                                    |
|           | [pre-commit](https://pre-commit.com/)                                       | `pipx install pre-commit`                              |
|           | [pyenv](https://github.com/pyenv/pyenv)                                     | `brew install pyenv`                                   |
|           | [poetry](https://python-poetry.org/)                                        | `pipx install poetry`                                  |
| js        | [volta](https://volta.sh/)                                                  | `brew install volta`                                   |
| vscode    | [Atom One Dark Theme](https://github.com/akamud/vscode-theme-onedark)       | `code --install-extension akamud.vscode-theme-onedark` |
|           | [Vim](https://github.com/VSCodeVim/Vim)                                     | `code --install-extension vscodevim.vim`               |
|           | [Markdown All in One](https://github.com/yzhang-gh/vscode-markdown)         | `code --install-extension yzhang.markdown-all-in-one`  |
| JetBrains | [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim)                 |                                                        |
|           | [One Dark theme](https://plugins.jetbrains.com/plugin/11938-one-dark-theme) |                                                        |
| Alacritty | [Alacritty](https://alacritty.org/)                                         | `brew install --cask alacritty`                        |
|           | [Catpuccin](https://github.com/catppuccin/alacritty)                        |                                                        |
| fish      | [starship](https://starship.rs)                                             | `brew install starship`                                |
|           | [direnv](https://direnv.net/)                                               | `brew install direnv`                                  |

**Shell & Term**

- [fish](https://fishshell.com/)
- [Alacritty](https://alacritty.org/)
- [dark-notify](https://github.com/cormacrelf/dark-notify) (nvim & alacritty)

**Social**

- [Discord](https://discord.com/)
- [Slack](https://slack.com/)
- [Telegram](https://telegram.org/)
