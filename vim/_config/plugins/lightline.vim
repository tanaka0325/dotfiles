if empty(globpath(&rtp, 'autoload/lightline.vim'))
  finish
endif

let g:lightline.active = {
    \ 'left': [['mode', 'paste', 'modified'],
    \          ['readonly', 'relativepath', 'modified']]}
let g:lightline.inactive = {
    \ 'left': [['mode', 'paste', 'modified'],
    \          ['readonly', 'relativepath', 'modified']]}
