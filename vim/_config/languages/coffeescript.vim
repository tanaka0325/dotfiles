" filetype
au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee
" indent
autocmd FileType coffee setlocal sw=2 sts=2 ts=2 et
