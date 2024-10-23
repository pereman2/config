-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

vim.opt.smartindent = true
vim.opt.signcolumn = "yes"

if vim.g.neovide then
  -- vim.o.guifont = "Iosevka:h12"
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_profiler = false
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- vim.api.nvim_command("colorscheme dump-quiet")

vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "WinSeparator", { bg = "#1c1b1b", fg = "#000000" })
vim.api.nvim_set_hl(0, "IblIndent", { fg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "IblScope", { fg = "#FFCE6B" })
vim.api.nvim_set_hl(0, "CursorColumn", { fg = "#FFCE6B" })
