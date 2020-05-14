if empty(globpath(&rtp, 'autoload/fzf/vim.vim'))
  finish
endif

" fzf
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>x :Commands<CR>
nnoremap <Leader>f :GFiles<CR>
nnoremap <Leader>+ :GFiles?<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>g :Rg<CR>
nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>h :History<CR>

