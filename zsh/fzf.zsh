# fzf
export FZF_DEFAULT_OPTS='--height 80% --reverse --border'

if which fzf > /dev/null; then
  # zsh
  eval "$(fzf --zsh)"

  # history search
  function select-history() {
    BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
    CURSOR=$#BUFFER
    zle clear-screen
  }
  zle -N select-history
  bindkey '^r' select-history

  # ghq list search
  function ghq-fzf() {
    local selected_dir=$(ghq list | fzf --query="$LBUFFER")
    if [ -n "$selected_dir" ]; then
      BUFFER="cd $(ghq root)/${selected_dir}"
      zle accept-line
    fi
    zle reset-prompt
  }
  zle -N ghq-fzf
  bindkey "^g" ghq-fzf
fi

