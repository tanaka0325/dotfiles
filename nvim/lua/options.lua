--[[ search ]]
-- ignore lower/upper case
vim.o.ignorecase = true
-- not ignore case if using Uppercase
vim.o.smartcase = true

--[[ indent ]]
-- auto indent like C
vim.o.smartindent = true
-- number of space when using TAB
vim.o.softtabstop = 4
-- number of space as one TAB
vim.o.tabstop = 4
-- spacewidth when use indent
vim.o.shiftwidth = 4

--[[ view ]]
-- show invisible chars
vim.o.list = true
vim.opt.listchars = { tab = '>~', trail = '-' }
-- display relative line number
vim.wo.number = true
vim.wo.relativenumber = true
-- highlight current line
vim.wo.cursorline = true
-- emoji
vim.o.emoji = true

--[[ yank ]]
-- yank to clipboard
if vim.fn.has('mac') then
	vim.o.clipboard = 'unnamed'
else
	vim.o.clipboard = 'unnamedplus'
end

-- How do I disable netrw when invoked with `$ nvim /path/to/directory` ?
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
