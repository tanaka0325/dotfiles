# lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# less
export LESSCHARSET=utf-8

# keybind
bindkey -e

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-bin-gem-node \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-autosuggestions

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

zinit wait lucid atload"zicompinit; zicdreplay" blockf for zsh-users/zsh-completions
### End of Zinit's installer chunk

# fzf
export FZF_DEFAULT_OPTS='--height 80% --reverse --border'

## Editor
export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

## Autocmplete
autoload -Uz compinit
compinit -u
# ignore case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完時に重複した文字を消す
setopt complete_in_word
# * で全ファイル補完をしない
setopt glob_complete

## History
# 履歴ファイルの保存先
export HISTFILE=${HOME}/.zhistory
# メモリに保存される履歴の件数
export HISTSIZE=10000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000000
# 重複を記録しない
setopt hist_ignore_dups
# 開始と終了を記録
setopt EXTENDED_HISTORY
# historyを共有
setopt share_history
# ヒストリに追加されるコマンド行が古いものと同じなら古いものを削除
setopt hist_ignore_all_dups
# スペースで始まるコマンド行はヒストリリストから削除
setopt hist_ignore_space
# ヒストリを呼び出してから実行する間に一旦編集可能
setopt hist_verify
# 余分な空白は詰めて記録
setopt hist_reduce_blanks
# 古いコマンドと同じものは無視
setopt hist_save_no_dups
# historyコマンドは履歴に登録しない
setopt hist_no_store
# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

## Others
# beep を無効にする
setopt no_beep
# ディレクトリ名だけでcdする
setopt auto_cd
# 高機能なワイルドカード展開を使用する
setopt extended_glob

## Alias
alias nv="nvim"
alias rm="rm -i"
alias l='less'
alias fig='docker-compose'
alias np='hugo new post/$(date "+%Y%m%d%H%M%S").md'
alias serv='python3 -m http.server'
alias cdd='cd ~/dotfiles'
if [ `uname -s` = 'Darwin' ]; then
    alias ls='ls -G'
    alias ll='ls -lhaG'
else
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -lha'
fi

## my cmds
export PATH="$HOME/.mycmd:$PATH"

## rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

## pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv > /dev/null; then
  eval "$(pyenv init -)"
fi

## pipenv
export PIPENV_VENV_IN_PROJECT=true

## go
export GO111MODULE=on
export PATH="$HOME/go/bin:$PATH"

## nodejs
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

# mysql
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/opt/openssl/lib/"

# fzf
if which fzf > /dev/null; then
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

# for starship
eval "$(starship init zsh)"

# for docker
if [ `uname -s` = "Linux" ]; then
  export LD_LIBRARY_PATH=/usr/lib
fi

# for clipboard
if [ `uname -s` = "Linux" ]; then
  if [ -z "$DISPLAY" ]; then
    Xvfb -screen 0 1280x720x24 &
    export DISPLAY=:0
  fi
fi

if [ `uname -s` = "Darwin" ]; then
  # The next line updates PATH for the Google Cloud SDK.
  if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi
  # The next line enables shell command completion for gcloud.
  if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi
fi
