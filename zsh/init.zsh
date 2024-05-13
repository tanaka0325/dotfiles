# homebrew
case `uname` in
  Darwin)
    eval "$(/opt/homebrew/bin/brew shellenv)"
  ;;
  Linux)
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  ;;
esac

# # for enhancd
autoload -Uz compinit
compinit

# plugin manager
eval "$(sheldon source)"

# read local seting
if [ -e $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi
