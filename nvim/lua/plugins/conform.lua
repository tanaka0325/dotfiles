return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			go = { "goimports", "gofumpt" },
		},
	},
	config = function()
		require("conform").setup({
			format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
			},
		})
	end,
}
