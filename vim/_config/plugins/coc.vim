if empty(globpath(&rtp, 'autoload/coc.vim'))
  finish
endif

" goimports
autocmd BufWritePre *.go :call CocAction('organizeImport')
