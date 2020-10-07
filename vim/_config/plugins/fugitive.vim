if empty(globpath(&rtp, 'autoload/fugitive.vim'))
  finish
endif

noremap <Leader>+ :Gstatus<CR> :only<CR>
nnoremap <leader>gs :tab sp<CR>:Gstatus<CR>:only<CR>
