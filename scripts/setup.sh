#!/bin/bash

# move working directory
cd `dirname $0`

# install packages
./package_installer.sh

# create symlinks
./symlinks.sh

# chsh
sudo sed --in-place -e '/auth.*required.*pam_shells.so/s/required/sufficient/g' /etc/pam.d/chsh
chsh -s $(which zsh)

source ~/.zinit/bin/zinit.zsh
source ~/.zshrc
