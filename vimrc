"字/改行コード指定
set fileformat=unix
set enc=utf-8
set fenc=utf-8
set fencs=iso-2020-jp,utf-8,euc-jp,cp932
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,euc-jp,iso-2022-jp,cp932,utf-16,utf-16le

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

" terminalでのポップアップの色を赤に
hi Pmenu ctermbg=0
"タイトルをウインドウ枠に表示する
set title
"行番号を表示する
set number
"カーソルが何行目のに置かれているかを表示。
set ruler
"非表示文字の表示
set list
"Listモードに使われる文字を設定する。詳しくは「:help listchars」で
set listchars=tab:>-,trail:-
"オンの時、コマンドライン補完が拡張モードで行われる。(？)
set wildmenu
"シンタックスハイライトを有効にする
syntax on
"検索結果文字列のハイライトを有効にする
set hlsearch
"オンの時は、ウインドウの幅より長い行は折り返されて表示される。
set wrap
"入力されているテキストの最大幅。行がそれより長くなると、改行される。0にすると無効。
set textwidth=0
"カーソル行をハイライト
set cursorline

"最下ウインドウにいつステータス行が表示されるのか設定する。
"　　　　0: 全く表示しない
"        1: ウインドウの数が2以上の時のみ表示
"        2: 常に表示
set laststatus=2
"コマンドラインの高さ
set cmdheight=1
"コマンド(の一部)を画面の最下行に表示する
set showcmd
"全角の記号を正しく表示する
set ambiwidth=double

"閉じ括弧が入力されたとき、対応する開き括弧に僅かの間ジャンプする。
set showmatch
"対応する括弧の表示時間を2にする
set matchtime=2
"新しい行を開始したとき、現在の行とインデントを揃える
set autoindent
"いい感じでインデントしてくれる。
set smartindent
"C用のindent
set cindent
"<TAB>の挿入や<BS>の使用等で、<TAB>が対応する空白の数
set softtabstop=4
"<TAB>が対応する空白の数
set tabstop=4
"インデントの各段階に使われる空白の数
set shiftwidth=4
"Insertモードで<TAB>を入れるとき、代わりに適切な数の空白を使う
"set expandtab
" クリップボードに
set clipboard+=unnamed
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" ファイルに折りたたみがある場合、折りたたまれた状態で、ファイルを開く
set foldlevel=0
" ルーラー表示
set ruler

" 自動折返しを日本語対応
set formatoptions+=mM

" plugins
call plug#begin('~/.vim/plugged')

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" color scheme
Plug 'joshdick/onedark.vim'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" replace
Plug 'markonm/traces.vim'
" comment out
Plug 'tyru/caw.vim'
" filer
Plug 'cocopon/vaffle.vim'
" expand region
Plug 'terryma/vim-expand-region'
" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" ruby
Plug 'tpope/vim-endwise'
" slim
Plug 'slim-template/vim-slim'

call plug#end()

" set color scheme
colorscheme onedark

" coc-solargraph
let g:coc_global_extensions = ['coc-solargraph']

" vim-go
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
"" all color
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
let g:go_highlight_debug = 1

" transparent
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none
"highlight LineNr ctermbg=none
"highlight Folded ctermbg=none
"highlight EndOfBuffer ctermbg=none

" keymaps
let mapleader = "\<Space>"
" esc
inoremap <silent> jj <ESC>
noremap <c-j> <ESC>
noremap! <c-j> <ESC>
" source ~/.vimrc
nnoremap <Leader>s :source $HOME/.vimrc<CR>
" save file
nnoremap <Leader>w :<C-u>w<CR>
" quit
nnoremap <Leader>q :<C-u>q<CR>
" go to start/end line
nnoremap H ^
nnoremap L $
" expand region
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

" fzf
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>x :Commands<CR>
nnoremap <Leader>f :GFiles<CR>
"nnoremap <Leader>st :GFiles?<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>h :History<CR>
" vaffle
nnoremap <Leader>v :Vaffle<CR>
" caw
nmap <Leader>\ <Plug>(caw:hatpos:toggle)
vmap <Leader>\ <Plug>(caw:hatpos:toggle)
" coc
nmap <c-]> <Plug>(coc-definition)

"それぞれ、連続で入力するとカーソルが()の間に戻る
imap {} {}<Left>
imap [] []<Left>
imap () ()<Left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>
imap `` ``<Left>
imap %% %%<Left>
