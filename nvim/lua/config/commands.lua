-- autotrim unused spaces at the end of line on save
vim.cmd([[
	augroup trim-unsused-spaces
		autocmd!
		autocmd BufWritePre * :%s/\s\+$//e
	augroup END
]])
