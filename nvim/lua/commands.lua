-- autotrim unused spaces at the end of line on save
vim.cmd [[au BufWritePre * :%s/\s\+$//e]]
