#!/bin/bash

# move working directory
cd `dirname $0`

# create directories
mkdir -p ~/tmp

# install packages
./package_installer.sh

# create symlinks
./symlinks.sh

# chsh
sudo chsh -s $(which zsh) $(whoami)

# done
echo "Done: please relogin."
echo "If you login next time, zsh plugins are started to install by zinit."
