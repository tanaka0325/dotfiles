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
apt_install tig
apt_install xclip
apt_install xvfb

##############
# zsh
##############
apt_install zsh

# starship
curl -fsSL https://starship.rs/install.sh | sudo bash -s -- -y
# zinit
curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh | bash -s -- -y
zinit self-update

##############
# vim
##############
apt_install vim
apt_install neovim

##############
# languages
##############
# ruby
## for ruby-build
#sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libmysqlclient-dev -y
#curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
#curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

##############
# rust commands
##############
apt_install cargo
apt_install fd-find
apt_install bat
RGVER=12.1.1
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/$RGVER/ripgrep_$RGVER_amd64.deb
ripgrep_$RGVER_amd64.deb
apt_install ripgrep
sudo ln -s /usr/bin/batcat /usr/local/bin/bat

