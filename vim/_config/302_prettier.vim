if empty(globpath(&rtp, 'autoload/prettier.vim'))
  finish
endif

let g:prettier#config#arrow_parens = 'always'
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1
