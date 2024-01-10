vim.cmd([[
	augroup setenvrcfiletype
		au! BufRead,BufNewFile *.envrc	setfiletype sh
	augroup END
]])

