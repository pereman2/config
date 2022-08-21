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

        use("gruvbox-community/gruvbox")
        use("folke/tokyonight.nvim")

        use("hrsh7th/nvim-cmp")
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
        use("lukas-reineke/indent-blankline.nvim")
        
        use("sbdchd/neoformat")

    end)

