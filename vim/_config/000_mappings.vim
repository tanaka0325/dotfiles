" keymaps
let mapleader = "\<Space>"

" esc
inoremap <silent> jj <ESC>
noremap <c-j> <ESC>
noremap! <c-j> <ESC>

" 検索結果のキーワードがハイライトされた場合、esc連打で消える
noremap <esc><esc> :nohlsearch<CR><esc>

" source ~/.vimrc
nnoremap <Leader>s :source $HOME/.vim/vimrc<CR>
" save file
nnoremap <Leader>w :<C-u>w<CR>
" quit
nnoremap <Leader>q :<C-u>q<CR>
" go to start/end line
nnoremap H ^
nnoremap L $

"それぞれ、連続で入力するとカーソルが()の間に戻る
"imap {} {}<Left>
"imap [] []<Left>
"imap () ()<Left>
"imap \"\" \"\"<Left>
"imap '' ''<Left>
"imap <> <><Left>
"imap `` ``<Left>
"imap %% %%<Left>
