VER=15.1.0

# nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd $HOME/.nodenv && src/configure && make -C src
source $HOME
$HOME/.nodenv/bin/nodenv init
cd $HOME

# node-build
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build

nodenv install $VER
nodenv global $VER
