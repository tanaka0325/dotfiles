# linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# starship
# eval "$(starship init zsh)"

# read local seting
if [ -e $HOME/.zshrc.local ]; then
  source $HOME/.zshrc.local
fi
