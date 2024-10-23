-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dump-quiet",
        },
    },



    {
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    },

    ---
    {"krshrimali/nvim-autorunner"},

    {
        "folke/flash.nvim",
        event = "VeryLazy",
        enabled = false,
        opts = {},
        -- stylua: ignore
    },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("toggleterm").setup()
        end
    },
    {
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
    },

     {
        'stevearc/overseer.nvim',
    },

    { 'nvim-tree/nvim-web-devicons'},

    {"sbdchd/neoformat"},

    {"ThePrimeagen/harpoon"},
    {'simrat39/symbols-outline.nvim'},
    {
        'nvim-pack/nvim-spectre',
        config = function()
            require('spectre').setup()
        end
    },

    {"krshrimali/nvim-autorunner"},

    {"TimUntersberger/neogit"},
    {"tpope/vim-fugitive"},

}
