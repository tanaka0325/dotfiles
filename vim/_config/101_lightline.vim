if empty(globpath(&rtp, 'autoload/lightline.vim'))
  finish
endif

" theme
let g:lightline = { 'colorscheme': 'one' }

