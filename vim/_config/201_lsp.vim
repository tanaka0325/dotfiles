if empty(globpath(&rtp, 'autoload/lsp.vim'))
  finish
endif

" tab completion
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" jump
nmap <c-]> :LspDefinition<CR>

" format
nnoremap <Leader>a :LspDocumentFormatSync<CR>

" auto popup
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_signs_enabled = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1

" for log
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')

set completeopt=menuone,noinsert,preview
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

