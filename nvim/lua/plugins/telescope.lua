return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-file-browser.nvim"
	},
	keys = {
		{
			"<Leader>f",
			function()
				require("telescope.builtin").find_files({
					no_ignore = false,
					hidden = true,
				})
			end,
			desc = "List files",
		},
		{
			"<Leader>b",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "List buffers",
		},
		{
			"<Leader>g",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live Grep",
		},
		{
			"<Leader>G",
			function()
				require("telescope.builtin").grep_string()
			end,
			desc = "Grep by the cursor word",
		},
		{
			"<Leader>h",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "List files recently opened",
		},
		{
			"<Leader>@",
			function()
				require("telescope.builtin").resume()
			end,
			desc = "open again using previous condition",
		},
	},
	config = function()
		local telescope = require("telescope")
		local fb_actions = require("telescope").extensions.file_browser.actions
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-g>"] = actions.close,
						["<C-u>"] = false,
						["<C-d>"] = actions.delete_buffer + actions.move_to_top,
					}
				},
				file_ignore_patterns = { ".git/", "pack/" },
			},
			extensions = {
				fzf = {
					fuzzy = true,    -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
				file_browser = {
					theme = "dropdown",
					-- disables netrw and use telescope-file-browser in its place
					hijack_netrw = true,
					mappings = {
						-- your custom insert mode mappings
						["n"] = {
							-- your custom normal mode mappings
							["N"] = fb_actions.create,
							["h"] = fb_actions.goto_parent_dir,
							["/"] = function()
								vim.cmd("startinsert")
							end,
							["<C-u>"] = function(prompt_bufnr)
								for i = 1, 10 do
									require("telescope.actions").move_selection_previous(prompt_bufnr)
								end
							end,
							["<C-d>"] = function(prompt_bufnr)
								for i = 1, 10 do
									require("telescope.actions").move_selection_next(prompt_bufnr)
								end
							end,
							["<PageUp>"] = require("telescope.actions").preview_scrolling_up,
							["<PageDown>"] = require("telescope.actions").preview_scrolling_down,
						},
					},
				},
			}
		})

		-- load extensions
		require("telescope").load_extension("fzf")
		--require("telescope").load_extension("file_browser")
	end,
}
