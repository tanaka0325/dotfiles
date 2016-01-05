" *.ruをrubyファイルとする
autocmd BufRead,BufNewFile *.ru set filetype=ruby

" rubyの場合インデントサイズを2にする
autocmd Filetype *.rb set tabstop=2 softtabstop=2 shiftwidth=2
