#!/bin/bash

# update & upgrade
sudo apt update && sudo apt full-upgrade -y

function apt_install {
  if which $1 &> /dev/null; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

##############
# utilities
##############
apt_install git
apt_install fzf

##############
# zsh
##############
apt_install zsh
# starship
curl -fsSL https://starship.rs/install.sh | sudo bash -s -- -y
# zinit
curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh | sudo bash -s -- -y

##############
# vim
##############
apt_install vim
# vim-plug
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

##############
# languages
##############
apt_install rbenv
apt_install ruby-build
# golang
git clone https://github.com/syndbg/goenv.git "$HOME/.goenv"
# nodejs
curl -L https://git.io/n-install | sudo bash -s -- -y

##############
# rust commands
##############
apt_install cargo
apt_install fd-find
apt_install bat
cargo install exa procs ripgrep
sudo ln -s /usr/bin/batcat /usr/local/bin/bat
