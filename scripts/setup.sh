#!/bin/bash

# move working directory
cd `dirname $0`

# install packages
./package_installer.sh

# create symlinks
./symlinks.sh

# download vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# chsh
sudo chsh -s $(which zsh) vagrant

# done
echo "Done: please relogin."
echo "If you login next time, zsh plugins are started to install by zinit."
