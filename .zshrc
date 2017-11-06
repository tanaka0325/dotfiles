## zplug
source $HOME/.zplug/init.zsh
# command highlight
zplug zsh-users/zsh-syntax-highlighting
# auto suggestion
zplug zsh-users/zsh-autosuggestions
# fzf
zplug junegunn/fzf-bin, \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"
export FZF_DEFAULT_OPTS='--height 80% --reverse --border'
# pure (prompt-color-theme)
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme
# load plugins
zplug load

## Editor
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

## Autocmplete
autoload -Uz compinit
compinit
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
alias ls="exa"
alias ll="exa -lha"
alias tree="exa -T"
alias l='less'
alias fig='docker-compose'
alias cdd='cd ~/dev/src/github.com/tanaka0325'
alias gosh='rlwrap gosh'
alias np='hugo new post/$(date "+%Y%m%d%H%M%S").md'

## yarn
export PATH="$PATH: `yarn global bin`"

## rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## go
export GOPATH=~/dev/
export GOROOT=/usr/local/opt/go/libexec
export GOBIN=$GOPATH/bin
export PATH=$PATH/$GOPATH
export PATH=$PATH/$GOROOT/bin

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
