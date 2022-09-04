require('packer').startup( function()
	use 'Shatur/neovim-ayu'
    
    use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    use 'nvim-treesitter/nvim-treesitter'
    
    use {
      'kyazdani42/nvim-tree.lua',
       requires = {
         'kyazdani42/nvim-web-devicons', -- optional, for file icons
       },
       tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup {
          
            
        } end
    }
    
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
      }
      end
    }

   use {
	"windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
   }
  
   use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

    use "lukas-reineke/indent-blankline.nvim"

    use 'RRethy/vim-illuminate'

    use {
      'm-demare/hlargs.nvim',
       requires = { 'nvim-treesitter/nvim-treesitter' }
    }

    use({
    	"Pocco81/auto-save.nvim",
	     config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})   
    
end
)

