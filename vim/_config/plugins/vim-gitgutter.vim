if empty(globpath(&rtp, 'autoload/gitgutter.vim'))
  finish
endif

" off git gutter keymap
let g:gitgutter_map_keys = 0
