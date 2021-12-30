"""
" file
"""
" no swap and backup file
set noswapfile
set nobackup
" create tmp backup when save file
set writebackup

"""
" diff
"""
set diffopt=filler,iwhite
set diffopt-=filler diffopt=iwhite,vertical

"""
" search
"""
set ignorecase
" no ignore if typing Uppercase
set smartcase
" circular search
set wrapscan

"""
" indent
"""
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
" highlight cursorline
set cursorline
" update time
set updatetime=250
" change cursor appearance by mode
if has('vim_starting')
  " vertical line for insert mode
  let &t_SI .= "\e[6 q"
  " block cursor for normal mode
  let &t_EI .= "\e[2 q"
  " under_bar for replace mode
  let &t_SR .= "\e[4 q"
endif

"""
" key
"""
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

