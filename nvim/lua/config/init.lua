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

vim.g.autoformat = false
vim.g.zig_fmt_autosave = 0

-- simple setups
require("Comment").setup {}
require("perfanno").setup()

local autorunner = require('autorunner')
autorunner.term_direction = "vertical"
autorunner.term_size = 100
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

local bgcolor = vim.fn.synIDattr(vim.fn.hlID("Normal"), "bg", "gui")
local util = require("perfanno.util")
require("perfanno").setup {
    line_highlights = util.make_bg_highlights(bgcolor, "#CC3300", 10),
    vt_highlight = util.make_fg_highlight("#CC3300"),

    -- Annotation formats that can be cycled between via :PerfCycleFormat
    --   "percent" controls whether percentages or absolute counts should be displayed
    --   "format" is the format string that will be used to display counts / percentages
    --   "minimum" is the minimum value below which lines will not be annotated
    -- Note: this also controls what shows up in the telescope finders
    formats = {
        { percent = true,  format = "%.2f%%", minimum = 0.5 },
        { percent = false, format = "%d",     minimum = 1 }
    },

    -- Automatically annotate files after :PerfLoadFlat and :PerfLoadCallGraph
    annotate_after_load = true,
    -- Automatically annotate newly opened buffers if information is available
    annotate_on_open = true,

    -- Options for telescope-based hottest line finders
    telescope = {
        -- Enable if possible, otherwise the plugin will fall back to vim.ui.select
        enabled = pcall(require, "telescope"),
        -- Annotate inside of the preview window
        annotate = true,
    },

    -- Node type patterns used to find the function that surrounds the cursor
    ts_function_patterns = {
        -- These should work for most languages (at least those used with perf)
        default = {
            "function",
            "method",
        },
        -- Otherwise you can add patterns for specific languages like:
        -- weirdlang = {
        --     "weirdfunc",
        -- }
    }
}
