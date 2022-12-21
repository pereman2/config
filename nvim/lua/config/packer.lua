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
        use {
            "neovim/nvim-lspconfig",
            opt = true,
            event = "BufReadPre",
            wants = { "nvim-lsp-installer", "lsp_signature.nvim", "cmp-nvim-lsp" },  -- for nvim-cmp
            -- wants = { "nvim-lsp-installer", "lsp_signature.nvim", "coq_nvim" },  -- for coq.nvim
            config = function()
                require("config.lsp").setup()
            end,
            requires = {
                "williamboman/nvim-lsp-installer",
                "ray-x/lsp_signature.nvim",
            },
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
        use 'nvim-treesitter/nvim-treesitter'
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

        use("gruvbox-community/gruvbox")
        use("folke/tokyonight.nvim")
        use 'navarasu/onedark.nvim' -- Theme inspired by Atom

        use({ 'rose-pine/neovim', as = 'rose-pine', })

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

        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
        use('editorconfig/editorconfig-vim')
        -- use("lukas-reineke/indent-blankline.nvim")
        
        use("sbdchd/neoformat")

    end)

