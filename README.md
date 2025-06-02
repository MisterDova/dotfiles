# dotfiles
- Organize all the configs I've used, act as an opportunity to learn how to use git
- This repo includes:
    - [x] Neovim configuration
    - [x] bashrc (for wsl) / zshrc (for mac)
    - [x] tmux config
    - [x] sketchybar config
    - [x] yabai + skhd config
    - [x] Starship config
    - [ ] script to install dependencies
## Things that I use
- neovim, as the main editor
- zsh, as the shell
- tmux
- sketchybar
- yabai WM 
- skhd for hotkeys used w/ yabai
- startship to make prompt line looks better
## How to use the repo
- first, clone this repo to your machine in a folder ~/.dotfiles/ in your root directory (if you're in unix)
```bash
git clone https://github.com/MisterDova/dotfiles.git ~/.dotfiles
```
- use the command below to make it work by creating a symbolic link between the repo folder and .config folder, this would apply most of the configs in the repo to the applications
```bash
ln -s ~/.dotfiles ~/.config
```
- to use the **zshrc** config, use the following command (don't forget to source it after applying to changes)
```bash
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```
- for **tmux**, I don't know why it can't read from the config folder. Therefore a command is needed to make it work
- if the status bar doesn't display properly, press **ctrl + i** for install the plugin
- this config also binds **ctrl + h/j/k/l** for navigating between windows, and **ctrl + r** for reloading the config
```bash
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```
