#!/bin/bash

# update & upgrade
sudo apt update && sudo apt full-upgrade -y

function apt_install {
  which $1 &> /dev/null
  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

##############
# utilities
##############
apt_install build-essential
apt_install git
apt_install fzf
apt_install tmux

##############
# zsh
##############
apt_install zsh

# starship
curl -fsSL https://starship.rs/install.sh | sudo bash -s -- -y
# zinit
curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh | bash -s -- -y

##############
# vim
##############
apt_install vim

##############
# languages
##############
# ruby
## for ruby-build
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libmysqlclient-dev -y
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
# golang
git clone https://github.com/syndbg/goenv.git ~/.goenv
apt_install golang-go
go get github.com/x-motemen/ghq
# nodejs
curl -L https://git.io/n-install | bash -s -- -y

##############
# rust commands
##############
apt_install cargo
apt_install fd-find
apt_install bat
cargo install exa procs ripgrep
sudo ln -s /usr/bin/batcat /usr/local/bin/bat

