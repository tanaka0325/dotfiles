require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<C-g>"] = require('telescope.actions').close
			}
		}
	}
}

-- keymaps
vim.api.nvim_set_keymap('n', '<Leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>f', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>g', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>G', '<cmd>lua require("telescope.builtin").grep_string()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>lua require("telescope.builtin").oldfiles()<cr>', { noremap = true })
