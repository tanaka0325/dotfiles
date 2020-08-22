"" indent
"新しい行を開始したとき、現在の行とインデントを揃える
set autoindent
"いい感じでインデントしてくれる。
set smartindent
"C用のindent
set cindent

" display line number
set number
" display invisible char
set list
set listchars=tab:>-,trail:-
" use wildmenu
set wildmenu
" highlight cursorline
set cursorline
" display statusline always
set laststatus=2

"" default tab setting
" number of space when using TAB
set softtabstop=4
" number of space as one TAB
set tabstop=4
" spacewidth when use indent
set shiftwidth=4

" termguicolors
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif
if (has('termguicolors'))
  set termguicolors
endif

" colorschema

" onedark
" colorscheme onedark
" let g:lightline = { 'colorscheme': 'onedark' }

" iceberg
" colorscheme iceberg
" let g:lightline = { 'colorscheme': 'iceberg' }

" tokyonight
" let g:tokyonight_style = 'night'
" let g:tokyonight_enable_italic = 1
" let g:lightline = { 'colorscheme': 'tokyonight' }
" colorscheme tokyonight

" material
let g:material_terminal_italics = 1
" let g:material_theme_style = 'default'
let g:material_theme_style = 'palenight'
" let g:material_theme_style = 'ocean'
" let g:material_theme_style = 'palenight-community'
" let g:material_theme_style = 'ocean-community'
" let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
let g:lightline = { 'colorscheme': 'material_vim' }
colorscheme material
