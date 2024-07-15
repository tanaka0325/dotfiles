-- map leader to Space
vim.g.mapleader = ' '

-- clear search highlight
vim.api.nvim_set_keymap('', '<ESC><ESC>', ':nohlsearch<CR><ESC>', { noremap = true, silent = true })
-- save file
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>W', ':w!<CR>', { noremap = true })
-- quit file
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>Q', ':q!<CR>', { noremap = true })
-- echo current full path
vim.api.nvim_set_keymap('n', '<Leader>p', ':echo expand("%:p")<CR>', { noremap = true })
-- go to start/end line
vim.api.nvim_set_keymap('n', 'H', '^', { noremap = true })
vim.api.nvim_set_keymap('n', 'L', '$', { noremap = true })
-- emacs keybind for insert mode
vim.api.nvim_set_keymap('i', '<C-f>', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-b>', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-e>', '<Esc>A', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<Esc>I', { noremap = true, silent = true })
-- quit terminal insert mode
-- vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
-- start with insert mode when entering terminal mode
vim.cmd [[autocmd TermOpen * startinsert]]
