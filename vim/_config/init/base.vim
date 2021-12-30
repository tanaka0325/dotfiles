"""
" file
"""
" no swap and backup file
set noswapfile
set nobackup
" create tmp backup when save file
set writebackup
" enable to change buffer even if not save
set hidden
" auto relaod when editting file is updated
set autoread

"""
" diff
"""
set diffopt=filler,iwhite
set diffopt-=filler diffopt=iwhite,vertical

"""
" for search
"""
set ignorecase
" no ignore if typing Uppercase
set smartcase
" circular search
set wrapscan
" highlight search word
set hlsearch
" display searched word count
set shortmess-=S
" enable incremental search
set incsearch

"""
" key
"""
" enable to remove below by backspace
set backspace=indent,eol,start
" yank to clipboard
if has('mac')
  set clipboard+=unnamed
else
  set clipboard+=unnamedplus
endif
" for wsl
if system('uname -a | grep microsoft') != ''
  augroup myYank
    autocmd!
    autocmd TextYankPost * :call system('/mnt/c/Windows/System32/clip.exe', @")
  augroup END
endif

"""
" indent
"""
set autoindent
set smartindent
" number of space when using TAB
set softtabstop=4
" number of space as one TAB
set tabstop=4
" spacewidth when use indent
set shiftwidth=4

"""
" view
"""
" display line number
set number
set relativenumber
" display invisible char
set list
set listchars=tab:>-,trail:-
" use wildmenu
set wildmenu
" highlight cursorline
set cursorline
" display statusline always
set laststatus=2
" update time
set updatetime=250


if has('vim_starting')
  " vertical line for insert mode
  let &t_SI .= "\e[6 q"
  " block cursor for normal mode 
  let &t_EI .= "\e[2 q"
  " under_bar for replace mode
  let &t_SR .= "\e[4 q"
endif

"""
" termguicolors
"""
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

