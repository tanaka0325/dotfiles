#!/bin/bash

ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/git/gitmessage.txt ~/.gitmessage.txt
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

# git diff-highlight
# TODO: for mac
sudo ln -s /usr/share/doc/git/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
sudo chmod +x /usr/local/bin/diff-highlight

