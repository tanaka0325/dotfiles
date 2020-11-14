# nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd $HOME/.nodenv && src/configure && make -C src
$HOME/.nodenv/bin/nodenv init

# node-build
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
