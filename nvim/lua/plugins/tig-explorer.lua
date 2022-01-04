-- keymaps
vim.api.nvim_set_keymap('n', '<Leader>s', ':TigStatus<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':TigOpenCurrentFile<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>B', ':TigBlame<CR>', { noremap = true })

-- workaround for close bug
vim.g.bclose_no_plugin_maps = true
