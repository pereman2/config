vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"


  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run="make"},
      {'nvim-telescope/telescope-symbols.nvim'},
    },
  }
  use { "nvim-telescope/telescope-project.nvim" }
  use { "neovim/nvim-lspconfig"}

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  use {
    "ray-x/lsp_signature.nvim",
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate' -- useful to update in case of new version
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }
  use("TimUntersberger/neogit")
  use("tpope/vim-fugitive")

  -- color themes
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")
  use 'navarasu/onedark.nvim' -- Theme inspired by Atom
  use 'NLKNguyen/papercolor-theme'
  use 'frenzyexists/aquarium-vim'
  use 'marko-cerovac/material.nvim'
  use 'ishan9299/nvim-solarized-lua'
  use 'sainnhe/gruvbox-material'

  use({ 'rose-pine/neovim', as = 'rose-pine', })

  use 'Shatur/neovim-ayu'

  use { "catppuccin/nvim", as = "catppuccin" }
  -- end themes

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip'
    },
  }
 
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")

  use("ThePrimeagen/harpoon")
  use("ThePrimeagen/git-worktree.nvim")


  use 'simrat39/symbols-outline.nvim'

  use {
    'nvim-lualine/lualine.nvim',
  }
  use('editorconfig/editorconfig-vim')
  -- use("lukas-reineke/indent-blankline.nvim")

  use("sbdchd/neoformat")
  use("mtdl9/vim-log-highlighting")
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  }

  use 'mizlan/iswap.nvim' -- swap args

  use 'xiyaowong/transparent.nvim'

  -- DAP stuff
  use 'mfussenegger/nvim-dap'
  use 'theHamsta/nvim-dap-virtual-text'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  -- END DAP

  use "folke/neodev.nvim"
  use "hauleth/asyncdo.vim"

  -- indent tab line
  use "lukas-reineke/indent-blankline.nvim"

  use 'nvim-tree/nvim-web-devicons'


end)

