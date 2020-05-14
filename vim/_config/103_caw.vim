if empty(globpath(&rtp, 'autoload/caw.vim'))
  finish
endif

nmap <Leader>\ <Plug>(caw:hatpos:toggle)
vmap <Leader>\ <Plug>(caw:hatpos:toggle)

