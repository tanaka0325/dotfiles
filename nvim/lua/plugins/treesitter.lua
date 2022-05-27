require'nvim-treesitter.configs'.setup {
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
	},
	highlight = {
		enable = true,
		disable = {},
	},
}
