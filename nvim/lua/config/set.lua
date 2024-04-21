vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "100"
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.mapleader = ","

vim.cmd('colorscheme github_dark_high_contrast')
vim.cmd('set signcolumn=yes')

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
})

vim.g.neoformat_c_clangformat = {
             exe = "clang-format",
             args = {'-style=~/clang-format-config'},
             }


if vim.g.neovide then
  vim.o.guifont = "Iosevka:h14"
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_profiler = false
  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end


-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})




-- if color scheme is dump-quiet
-- if vim.g.colors_name == "dump-quiet" then
--     vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#000000", fg = "#ffffff" })
--     vim.api.nvim_set_hl(0, "WinSeparator", { bg = "#1c1b1b", fg = "#000000" })
--     vim.api.nvim_set_hl(0, "IblIndent", { fg = "#000000" })
--     vim.api.nvim_set_hl(0, "IblScope", { fg = "#FFCE6B" })
--     vim.api.nvim_set_hl(0, "CursorColumn", { fg = "#FFCE6B"})
-- end

vim.g.zig_fmt_autosave = 0

vim.cmd("packadd termdebug")
vim.cmd("packadd vimspector")
vim.cmd("let g:vimspector_enable_mappings = 'HUMAN'")
