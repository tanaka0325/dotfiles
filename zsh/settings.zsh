# lang
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# less
export LESSCHARSET=utf-8

# keybind
bindkey -e

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


