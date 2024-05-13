vim.cmd([[
	augroup setyotemplatefiletype
		au! BufRead,BufNewFile *.go.tpl	setfiletype go
	augroup END
]])

