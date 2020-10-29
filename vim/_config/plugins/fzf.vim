if empty(globpath(&rtp, 'autoload/fzf/vim.vim'))
  finish
endif

" fzf
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>x :Commands<CR>
nnoremap <Leader>f :GFiles<CR>
" nnoremap <Leader>+ :GFiles?<CR>
nnoremap <Leader>F :Files<CR>
nnoremap <Leader>g :Rg<CR>
" nnoremap <Leader>t :Tags<CR>
nnoremap <Leader>h :History<CR>

" let g:fzf_layout = { 'down': '100%' }

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:wrap'), <bang>0)
