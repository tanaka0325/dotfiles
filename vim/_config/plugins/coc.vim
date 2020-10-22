if empty(globpath(&rtp, 'autoload/coc.vim'))
  finish
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <c-]> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" goimports
" autocmd BufWritePre *.go :call CocAction('organizeImport')

" format
command! -nargs=0 Format :call CocAction('format')
autocmd FileType javascript,typescript,typescript.tsx,css,scss,ruby nnoremap <buffer> <Leader>a :Format<CR>

