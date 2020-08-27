###
# python / install pyenv & pipenv
###
# vars
DIRPY2="$HOME/.config/nvim/py2"
DIRPY3="$HOME/.config/nvim/py3"
PY2VENV="nvim-py2"
PY3VENV="nvim-py3"
# create dir
mkdir -p $DIR2
mkdir -p $DIR3
# install
cd $DIR2
pipenv --python 2
pipenv install neovim
cd $DIR3
pipenv --python 3
pipenv install neovim

###
# ruby / install rbenv
###
# vars
DIRRB="$HOME/.config/nvim/rb"
# create dir
mkdir -p $DIRRB
cd $DIRRB
# install
RBVER=`rbenv install --list-all | grep -e "^\d\+.\d\+.\d\+$" | tail -1`
rbenv install $RBVER
rbenv rehash
rbenv local $RBVER
gem install neovim

###
# node / install n
###
# vars
DIRJS="$HOME/.config/nvim/node"
# create dir
mkdir -p $DIRJS
cd $DIRJS
# install
JSVER=`nodenv install -l | grep -e "^\d\+.\d\+.\d\+$" | tail -1`
nodenv install $JSVER
nodenv rehash
nodenv local $JSVER
npm install -g neovim
