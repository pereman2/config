vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"


    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = "make" },
            { 'nvim-telescope/telescope-symbols.nvim' },
        },
    }
    use { "nvim-telescope/telescope-project.nvim" }
    use { "neovim/nvim-lspconfig" }

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
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate' -- useful to update in case of new version
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
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
    use({ 'projekt0n/github-nvim-theme' })
    use 'p00f/alabaster.nvim'

    use({ 'rose-pine/neovim', as = 'rose-pine', })

    use 'Shatur/neovim-ayu'

    use { "catppuccin/nvim", as = "catppuccin" }
    -- end themes

    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
        config = function()
            require('gitsigns').setup {
                signs                        = {
                    add          = { text = '│' },
                    change       = { text = '│' },
                    delete       = { text = '_' },
                    topdelete    = { text = '‾' },
                    changedelete = { text = '~' },
                    untracked    = { text = '┆' },
                },
                signcolumn                   = true,  -- Toggle with `:Gitsigns toggle_signs`
                numhl                        = false, -- Toggle with `:Gitsigns toggle_numhl`
                linehl                       = false, -- Toggle with `:Gitsigns toggle_linehl`
                word_diff                    = false, -- Toggle with `:Gitsigns toggle_word_diff`
                watch_gitdir                 = {
                    interval = 1000,
                    follow_files = true
                },
                attach_to_untracked          = true,
                current_line_blame           = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
                current_line_blame_opts      = {
                    virt_text = true,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 1000,
                    ignore_whitespace = false,
                },
                current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
                sign_priority                = 6,
                update_debounce              = 100,
                status_formatter             = nil,   -- Use default
                max_file_length              = 40000, -- Disable if file is longer than this (in lines)
                preview_config               = {
                    -- Options passed to nvim_open_win
                    border = 'single',
                    style = 'minimal',
                    relative = 'cursor',
                    row = 0,
                    col = 1
                },
                yadm                         = {
                    enable = false
                },
            }
        end
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip',
            -- 'L3MON4D3/LuaSnip',
            -- 'saadparwaiz1/cmp_luasnip'
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

    -- use 'xiyaowong/transparent.nvim'

    -- DAP stuff
    use 'mfussenegger/nvim-dap'
    use 'theHamsta/nvim-dap-virtual-text'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    use "leoluz/nvim-dap-go"
    -- END DAP

    use "folke/neodev.nvim"
    use "hauleth/asyncdo.vim"

    -- indent tab line
    -- use "lukas-reineke/indent-blankline.nvim"

    use 'nvim-tree/nvim-web-devicons'

    use 'nokobear/vim-colorscheme-edit'

    use 'mfulz/cscope.nvim'

    use {
        'chipsenkbeil/distant.nvim',
        branch = 'v0.2',
        config = function()
            require('distant').setup {
                -- Applies Chip's personal settings to every machine you connect to
                --
                -- 1. Ensures that distant servers terminate with no connections
                -- 2. Provides navigation bindings for remote directories
                -- 3. Provides keybinding to jump into a remote file's parent directory
                ['*'] = require('distant.settings').chip_default()
            }
        end
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require('colorizer').setup()
        end
    }

    ---
    use "krshrimali/nvim-autorunner"
    use "rcarriga/nvim-notify"
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }

    use {
        'ldelossa/gh.nvim',
        requires = { { 'ldelossa/litee.nvim' } },
        config = function()
            require('litee.lib').setup()
            require('litee.gh').setup({})
        end

    }

    -- use 'hrsh7th/vim-vsnip'
    -- use 'hrsh7th/vim-vsnip-integ'
    ---

    use {
        'stevearc/resession.nvim',
    }

    use {
        'stevearc/overseer.nvim',
    }

    use "nvim-lua/plenary.nvim"

    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "alfaix/neotest-gtest",
            "nvim-neotest/neotest-go",
        }

    }


    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }
    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {}
        end,
        requires = "kyazdani42/nvim-web-devicons"
    }
    use { 'rktjmp/lush.nvim' }

    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
                patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json",
                    "install-deps.sh" },

                detection_methods = { "pattern", "lsp" },

                silent_chdir = false
            }
        end
    }
    -- use "github/copilot.vim"
    use 'Mofiqul/adwaita.nvim'
    use "jbyuki/quickmath.nvim"

    use {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    }
    use {
        'nvim-pack/nvim-spectre',
        config = function()
            require('spectre').setup()
        end
    }

    use {
        "lukas-reineke/indent-blankline.nvim",
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup {}
        end
    }

    use 't-troebst/perfanno.nvim'
    use "sindrets/diffview.nvim"


    use 'dbgx/lldb.nvim'
    use 'mdedonno1337/disassemble.nvim'
    use 'puremourning/vimspector'

    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua',     run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })
end)
