require("config.packer")

require("config.set")

require("config.nvim-cmp")
require("config.keymap")
require("config.telescope")
require("config.lualline")
require("config.refactoring")
require("config.treesitter")
require("config.gitsigns")
require("config.lsp")
require("config.iswap")
require("config.dap")
require("config.indent-line")
require("config.overseer")
-- require("config.recession")
require("config.neotest")
require("config.oil")

-- simple setups
require("Comment").setup {}
require("perfanno").setup()

local autorunner = require('autorunner')
autorunner.term_direction = "horizontal"
autorunner.term_size = 10
require("ibl").setup {}
require("ibl").setup({})
require 'navigator'.setup()

require("project_nvim").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json",
    "install-deps.sh" },

    detection_methods = { "pattern", "lsp" },

    silent_chdir = false
}
