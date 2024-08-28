return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VimEnter",
	config = function()
		require("nvim-treesitter.configs").setup {
			-- ensure_installed = "maintained",
			ensure_installed = {
				"bash",
				"go",
				"gomod",
				"graphql",
				"javascript",
				"json",
				"lua",
				"make",
				"markdown",
				"php",
				"toml",
				"typescript",
				"vim",
				"yaml",
				"cue",
				"terraform",
			},
			highlight = {
				enable = true,
				disable = {},
			},
		}
	end
}
