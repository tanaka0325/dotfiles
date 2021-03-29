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

"""
" termguicolors
"""
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
endif

