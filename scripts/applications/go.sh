VER=1.15.6

# go
curl -L "https://golang.org/dl/go$VER.linux-amd64.tar.gz" -o $HOME/tmp/go$VER.tar.gz
tar -C $HOME/ -xzf $HOME/tmp/go$VER.tar.gz

# ghq
$HOME/go/bin/go get github.com/x-motemen/ghq

