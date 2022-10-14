vim.cmd [[packadd packer.nvim]]

-- run :PackerCompile automatically whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
	-- plugin manager
	use { 'wbthomason/packer.nvim', opt = true }

	use {
		'phaazon/hop.nvim',
		branch = 'v1',
		config = 'require("plugins.hop")',
	}

	-- filer
	use {
		'tamago324/lir.nvim',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'kyazdani42/nvim-web-devicons' },
		},
		config = 'require("plugins.lir")',
	}

	-- auto close
	use { 'mattn/vim-lexiv', event = 'VimEnter *' }

	-- comment out
	use {
		'numToStr/Comment.nvim',
	 	config = 'require("plugins.comment")',
	}

	-- colorscheme
	use {
		{
			-- 'rmehri01/onenord.nvim',
			-- 'folke/tokyonight.nvim',
			'EdenEast/nightfox.nvim',
			-- config = function()
			-- 	-- vim.cmd [[ colorscheme onenord ]]
			-- 	-- vim.cmd [[ colorscheme tokyonight ]]
			-- 	-- vim.cmd [[ colorscheme nightfox ]]
			-- end,
			config = 'require("plugins.nightfox")',
		},
		{
			'nvim-lualine/lualine.nvim',
			requires = {
				{ 'kyazdani42/nvim-web-devicons' },
			},
			config = 'require("plugins.lualine")',
		}
	}

	-- git
	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = 'require("gitsigns").setup()',
	}

	use {
		'iberianpig/tig-explorer.vim',
		requires = {
			{ 'rbgrouleff/bclose.vim' }
		},
		config = 'require("plugins.tig-explorer")',
	}

	-- languages
	-- go
	use 'mattn/vim-goimports'

	-- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{'nvim-lua/plenary.nvim'},
		},
		config = 'require("plugins.telescope")',
	}

	-- tree sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		event = 'VimEnter *',
		config = 'require("plugins.treesitter")',
	}

	-- lsp
	use {
		{'neovim/nvim-lspconfig', config = 'require("plugins.lsp")'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'hrsh7th/cmp-cmdline'},
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-vsnip'},
		{'hrsh7th/vim-vsnip'},
	}
end)
