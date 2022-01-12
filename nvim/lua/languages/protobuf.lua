vim.cmd([[
	augroup proto-indent
		autocmd!
		autocmd FileType proto setlocal sw=2 sts=2 ts=2 et
	augroup END
]])
