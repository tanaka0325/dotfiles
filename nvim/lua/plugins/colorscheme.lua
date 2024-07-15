return {
	-- Nightfox
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme nightfox]])
		end,
	},

	-- lualine
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require("lualine").setup {
				options = {
					theme = 'nightfox',
				},
				sections = {
					lualine_a = {
						{
							'filename',
							path = 1,
						},
					},
				},
			}
		end,
	},

	-- catppuccino
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[
	-- 			colorscheme catppuccin
	-- 			" colorscheme catppuccin-latte
	-- 			" colorscheme catppuccin-frappe
	-- 			" colorscheme catppuccin-macchiato
	-- 			" colorscheme catppuccin-mocha
	-- 		]])
	-- 		-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
	-- 	end,
	-- }

	-- tokyonight
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		vim.cmd([[
	-- 			" colorscheme tokyonight
	-- 			" colorscheme tokyonight-night
	-- 			" colorscheme tokyonight-storm
	-- 			" colorscheme tokyonight-day
	-- 			" colorscheme tokyonight-moon
	-- 		]])
	-- 		-- " There are also colorschemes for the different styles.
	-- 		-- " colorscheme tokyonight-night
	-- 		-- " colorscheme tokyonight-storm
	-- 		-- " colorscheme tokyonight-day
	-- 		-- " colorscheme tokyonight-moon
	-- 	end,
	-- }
}
