" ウインドウを分割したときにウインドウの移動を楽にする
" CTRL-hjklでウインドウ移動
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

"コマンドを素早く入力するため、コロンとセミコロンを入れ替える
noremap ; :
noremap : ;
"移動コマンド
"次の記号、前の記号へ1キーで移動
noremap ) t)
noremap ( T(
noremap } t}
noremap { T{
noremap > t>
noremap < T<
noremap ] t]
noremap [ T[
"コマンドラインへの貼りつけ
map! <C-v> <C-r>"
"カッコ
"それぞれ、連続で入力するとカーソルが()の間に戻る
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>
imap `` ``<Left>
imap %% %%<Left>
" jjでESC
inoremap jj <ESC>

