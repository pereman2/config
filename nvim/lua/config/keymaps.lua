-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- map("n", "<leader>ff", ":Telescope git_files<CR>", nil)
-- map("n", "<leader>fr", ":Telescope lsp_references<CR>", nil)
map("n", "<leader>fa", ":Telescope find_files<CR>", nil)
map("n", "<leader>fsd", ":Telescope lsp_document_symbols<CR>", nil)
map("n", "<leader>fsa", ":Telescope lsp_dynamic_workspace_symbols<CR>", nil)
map("n", "gs", ":Telescope lsp_document_symbols<CR>", nil)
map("n", "gS", ":Telescope lsp_dynamic_workspace_symbols<CR>", nil)
map("n", "<leader>fso", ":SymbolsOutlineOpen<CR>", nil)

map("n", "<leader>fa", ":Telescope find_files<CR>", nil)
map("n", "<leader>b", ":Telescope buffers<CR>", nil)
map("n", "<leader>`", ":lua require 'telescope'.extensions.projects.projects {}<CR>", nil)
map("n", "<leader>t", ":Telescope<CR>", nil)
map("n", "<leader>c", ":Telescope commands<CR>", nil)
-- harpoon

map("n", "<leader>z", ':lua require("harpoon.mark").add_file()<CR>', nil)
map("n", "<leader>l", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', nil)
map("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>', nil)
map("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>', nil)
map("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>', nil)
map("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>', nil)

map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })

map("n", "<leader>s", ":GrugFar<CR>", nil)

map("n", "<C-l>", "<C-w>l", nil)
map("n", "<C-h>", "<C-w>h", nil)
map("n", "<C-j>", "<C-w>j", nil)
map("n", "<C-k>", "<C-w>k", nil)

map("n", "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", nil)

map("n", "<leader>m", ":Man<CR><C-w>j", nil)

map("n", "<leader>gl", ":vertical Git log -n 1000<CR>", nil)
map("n", "<leader>gd", ":vertical Git diff<CR>", nil)
map("n", "<leader>gb", ":vertical Git blame<CR>", nil)
map("n", "<leader>gs", ":vertical Git<CR>", nil)
map("n", "<leader>ghs", ":vertical Gitsigns stage_hunk<CR>", nil)
map("n", "<leader>ghu", ":vertical Gitsigns undo_stage_hunk<CR>", nil)

map("v", "<leader>\\", "<cmd>lua require('telescope').extensions.refactoring.refactors()<CR>", nil)

map("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<CR>", nil)

map("n", "<leader>wl", "<cmd>lua require('config.git_worktree').ListBranches()<CR>", nil)
map("n", "<leader>wa", "<cmd>lua require('config.git_worktree').CreateWorktree()<CR>", nil)

map("n", "<leader>e", ":Oil<CR>", nil)

map("n", "<leader>wc", ":lua require('config.git_worktree').CreateBranch()<CR>", nil)

map("n", "[s", ":ISwapWithLeft<CR>", nil)
map("n", "]s", ":ISwapWithRight<CR>", nil)

-- dap stuff
map("n", "<F5>", ':lua require("dap").continue()<CR>', nil)
map("n", "<F8>", ':lua require("dap").step_over()<CR>', nil)
map("n", "<F9>", ':lua require("dap").step_into()<CR>', nil)
map("n", "<F10>", ':lua require("dap").step_out()<CR>', nil)

map("n", "<leader>dc", ':lua require("dap").continue()<CR>', nil)
map("n", "<leader>dso", ':lua require("dap").step_over()<CR>', nil)
map("n", "<leader>dsi", ':lua require("dap").step_into()<CR>', nil)
map("n", "<leader>dsO", ':lua require("dap").step_out()<CR>', nil)
map("n", "<leader>db", ':lua require("dap").toggle_breakpoint()<CR>', nil)
map("n", "<leader>dB", ":lua require(\"dap\").set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", nil)
map("n", "<leader>dr", ':lua require("dap").repl.open()<CR>', nil)
map("n", "<leader>dl", ':lua require("dap").run_last()<CR>', nil)
map("n", "<leader>dt", ":DapTerminate<CR>", nil)
-- end dap

-- open config
map("n", "<leader>5", ":e ~/.config/nvim/lua/config<CR>", nil)
map("n", "<leader>6", ":e ~/orgfiles/refile.org<CR>", nil)
map("n", "<leader>od", ":e ~/.config/nvim/lua/config/dap.lua<CR>", nil)

vim.api.nvim_command("set clipboard=unnamedplus")

local autorunner = require("autorunner")
vim.api.nvim_create_user_command("Compile", autorunner.run, { nargs = 0 })
vim.api.nvim_create_user_command("CompileEdit", autorunner.edit_file, { nargs = 0 })

map("n", "<leader>rr", ":AutoRunnerTermRun<CR>", nil)
map("n", "<leader>rt", ":AutoRunnerTermToggle<CR>", nil)
map("n", "<leader>rc", ":AutoRunnerClearBuffer<CR>", nil)
map("n", "<leader>re", ":AutoRunnerEditFile<CR>", nil)
map("n", "<leader>rn", ":!~/binaries/config/bin/autorunner_create_build_file.sh<CR>", nil) -- automatically create file to compile
map("n", "<leader>ra", ":AutoRunnerAddCommand<CR>", nil)
