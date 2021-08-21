if has('nvim')
	let g:plugin_path = stdpath('data')
endif

call plug#begin(plugin_path . '/plugged')
	Plug 'sainnhe/everforest'
	Plug 'tpope/vim-fugitive'
	
	if has('nvim')
		Plug 'nvim-lua/plenary.nvim'
		Plug 'windwp/nvim-autopairs'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'ourigen/skyline.vim'
		Plug 'neovim/nvim-lspconfig'
		Plug 'glepnir/lspsaga.nvim'
		Plug 'kyazdani42/nvim-web-devicons'
		Plug 'hrsh7th/nvim-compe'
		Plug 'hrsh7th/vim-vsnip'
		Plug 'hrsh7th/vim-vsnip-integ'
	endif
call plug#end()
