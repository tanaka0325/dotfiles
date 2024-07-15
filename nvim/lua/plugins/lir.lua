return {
	"tamago324/lir.nvim",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons"
	},
	keys = {
		{
			"<Leader>v",
			function()
				require'lir.float'.toggle()
			end,
			desc = "Open file browser",
		},
	},
	config = function()
		local lir = require'lir'
		local actions = require'lir.actions'

		-- settings
		lir.setup {
			show_hidden_files = false,
			devicons = {
				enable = true,
			},
			hide_cursor = true,
			mappings = {
				['<Enter>'] = actions.edit,
				['l']       = actions.edit,
				['<C-s>']   = actions.split,
				['<C-v>']   = actions.vsplit,
				['h']       = actions.up,
				['q']       = actions.quit,
				['<C-g>']       = actions.quit,
				['<Esc>']       = actions.quit,

				['K']       = actions.mkdir,
				['N']       = actions.newfile,
				['R']       = actions.rename,
				['Y']       = actions.yank_path,
				['.']       = actions.toggle_show_hidden,
				['D']       = actions.delete,
			},
			float = {
				winblend = 0,
				curdir_window = {
					enable = false,
					highlight_dirname = false
				},
			},
			on_init = function()
				-- echo cwd
				vim.api.nvim_echo({ { vim.fn.expand("%:p"), "Normal" } }, false, {})
			end,
		}
	end,
}
