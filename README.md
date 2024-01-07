# Dotfiles

## Install prerequiremnts

### Setup Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Install packages
```bash
brew install git
git clone ....
cd ~/.dotfiles
brew bundle install
```
## Setup Configurations

### Stow config
```bash
cd ~/.dotfiles 
stow <config>
```

### Setup nvchad
```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
rm -rf ~/.config/nvim/lua/custom
cd ~/.dotfiles
stow nvchad
nvim
```
Press SPACE+th to change theme to catpuccin.

### Setup tmux plugin manager - tpm
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```
Press CTRL+a + I to install plugins

