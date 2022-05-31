#!/usr/bin/env bash

# zsh
ln -sf ~/dotfiles/zsh ~/.zsh
ln -sf ~/dotfiles/zsh/.zshenv ~/.zshenv
touch ~/dotfiles/zsh/.zshrc.local
ln -sf ~/dotfiles/zsh/.zshrc.local ~/.zshrc.local

# vim
ln -sf ~/dotfiles/vim ~/.vim
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

# git
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/git/gitmessage.txt ~/.gitmessage.txt
touch ~/dotfiles/git/gitconfig.local
ln -sf ~/dotfiles/git/gitconfig.local ~/.gitconfig.local

