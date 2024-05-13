local actions = require "telescope.actions"
require('telescope').setup{
	defaults = {
		mappings = {
			i = {
				["<C-g>"] = actions.close,
				["<C-u>"] = false,
				["<C-d>"] = actions.delete_buffer + actions.move_to_top,
			}
		}
	},
	extensions = {
		fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
			-- the default case_mode is "smart_case"
		}
	},
}
require('telescope').load_extension('fzf')

-- keymaps
vim.api.nvim_set_keymap('n', '<Leader>b', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>f', '<cmd>lua require("telescope.builtin").find_files({ hidden = true })<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>g', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>G', '<cmd>lua require("telescope.builtin").grep_string()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<cmd>lua require("telescope.builtin").oldfiles()<cr>', { noremap = true })
-- again
vim.api.nvim_set_keymap('n', '<Leader>@', '<cmd>lua require("telescope.builtin").resume()<cr>', { noremap = true })
