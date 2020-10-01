if empty(globpath(&rtp, 'autoload/ctrlp.vim'))
  finish
endif

" use ripgrep
if executable('rg')
  set grepprg=rg\ --color=never
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
  let g:ctrlp_use_caching = 0
else
  let g:ctrlp_clear_cache_on_exit = 0
endif

" window
" let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30'

" keymap
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>h :CtrlPMRU<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
" nnoremap <C-r> :CtrlPMRU<CR>

