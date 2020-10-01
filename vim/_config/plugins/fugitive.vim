if empty(globpath(&rtp, 'autoload/fugitive.vim'))
  finish
endif

noremap <Leader>+ :Gstatus<CR>
