if empty(globpath(&rtp, 'autoload/vaffle.vim'))
  finish
endif

nnoremap <Leader>v :Vaffle<CR>

