vim.cmd([[
	augroup markdown-indent
		autocmd!
		autocmd FileType markdown setlocal et
	augroup END
]])
