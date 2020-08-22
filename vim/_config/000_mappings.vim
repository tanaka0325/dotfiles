" keymaps
let mapleader = "\<Space>"

" reload vimrc
nnoremap <Leader>R :source $HOME/.vim/vimrc<CR>

" 検索結果のキーワードがハイライトされた場合、esc連打で消える
noremap <ESC><ESC> :nohlsearch<CR><ESC>
nnoremap <Leader>c :<C-u>nohlsearch<CR>
nnoremap <C-c> :nohlsearch<CR>

" save file
nnoremap <Leader>w :<C-u>w<CR>
nnoremap <Leader>W :<C-u>w!<CR>
" quit
nnoremap <Leader>q :<C-u>q<CR>
nnoremap <Leader>Q :<C-u>q!<CR>
" go to start/end line
nnoremap H ^
nnoremap L $

" emacs keybind for insert mode
inoremap <silent> <C-f> <Right>
inoremap <silent> <C-b> <Left>
inoremap <silent> <C-e> <Esc>A
inoremap <silent> <C-a> <Esc>I
