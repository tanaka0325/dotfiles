if empty(globpath(&rtp, 'autoload/anzu.vim'))
  finish
endif

" keymaps
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" view
set statusline=%{anzu#search_status()}

