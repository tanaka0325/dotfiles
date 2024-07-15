-- TODO: replace another git integration plugin
return {
	'iberianpig/tig-explorer.vim',
	dependencies = {
		{ 'rbgrouleff/bclose.vim' }
	},
	config = function()
		vim.api.nvim_set_keymap('n', '<Leader>s', ':TigStatus<CR>', { noremap = true })
		vim.api.nvim_set_keymap('n', '<Leader>t', ':TigOpenCurrentFile<CR>', { noremap = true })
		vim.api.nvim_set_keymap('n', '<Leader>B', ':TigBlame<CR>', { noremap = true })
		vim.g.bclose_no_plugin_maps = true
	end,
}
