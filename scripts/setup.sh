#!/bin/bash

# move working directory
cd `dirname $0`

# install packages
./package_installer.sh

# create symlinks
./symlinks.sh

# chsh
sudo chsh -s $(which zsh) $(whoami)

# create directories
mkdir -p ~/tmp

# done
echo "Done: please relogin."
echo "If you login next time, zsh plugins are started to install by zinit."
