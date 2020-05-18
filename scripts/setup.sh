#!/bin/bash

# move working directory
cd `dirname $0`

# install packages
./package_installer.sh

# install other applications
for f in applications/*.sh; do bash "$f" -H; done

# create symlinks
./symlinks.sh

# chsh
sudo chsh -s $(which zsh) vagrant

# done
echo "Done: please relogin."
echo "If you login next time, zsh plugins are started to install by zinit."
