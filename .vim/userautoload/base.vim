"＜文字コード関係＞
"改行コード指定
set fileformat=unix
"文字コード指定
set enc=utf-8
set fenc=utf-8
set fencs=iso-2020-jp,utf-8,euc-jp,cp932
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,euc-jp,iso-2022-jp,cp932,utf-16,utf-16le

"-------------------------------------------------
"＜検索関係＞
"検索で大文字小文字を区別しない
set ignorecase
"検索の時に大文字が含まれている場合は区別して検索する
set smartcase
"検索がファイル末尾まで行ったら、先頭から再び検索する。
set wrapscan
" 検索時ime停止
set imsearch=0
" 検索結果のキーワードがハイライトされた場合、esc連打で消える
noremap <esc><esc> :nohlsearch<CR><esc>

"----------------------------------------------
"＜バックアップ関係＞
"ファイルの上書きの前にバックアップを作る。書き込みが成功してもバックアップはそのままとっておく。(有効:backup/無効:nobackup)
set nobackup
"ファイルの上書きの前にバックアップを作る。オプション'backup'がオンでない限り、バックアップは上書きに成功した後削除される。(有効:writebackup/無効:nowritebackup)
set writebackup

"バッファを切り替えてもundoの効力を失わない
set hidden
"マウスを有効にする
set mouse=a
" Inseerモード時にIME OFF
set iminsert=0
" swapを作らない
set noswapfile
" 同時編集しているファイルが更新された場合、追随して更新する
set autoread
" diff設定
set diffopt=filler,iwhite
" vimdiff時の不要な表示をしない
set diffopt-=filler diffopt=iwhite,vertical

"保存時に行末の空白を削除する
autocmd BufWritePre * :%s/\s\+$//ge
"保存時にtabをスペースに変換する
autocmd BufWritePre * :%s/\t/ /ge
