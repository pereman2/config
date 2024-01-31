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
require("ibl").setup{}
require("Comment").setup{}
