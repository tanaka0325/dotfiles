#!/bin/bash

# move working directory
cd `dirname $0`

# install packages
./package_installer.sh

# create symlinks
./symlinks.sh

# chsh
sudo chsh -s $(which zsh) vagrant

# done
echo "Done: please relogin."
