VER=1.15.5

# go
curl -L "https://golang.org/dl/go$VER.linux-amd64.tar.gz" -o ~/tmp/go$VER.tar.gz
tar -C ~/ -xzf ~/tmp/go$VER.tar.gz

# ghq
go get github.com/x-motemen/ghq

