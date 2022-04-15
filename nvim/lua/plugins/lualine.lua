require('lualine').setup {
	options = {
		-- theme = 'onenord',
		-- theme = 'tokyonight',
		theme = 'nightfox',
	},
	sections = {
		lualine_a = {
			{
				'filename',
				path = 1,
			}
		}
	}
}
