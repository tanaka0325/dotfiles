require('lualine').setup {
	options = {
		theme = 'onenord',
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
