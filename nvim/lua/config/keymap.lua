

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>ff", ":Telescope git_files<CR>", nil) 
map("n", "<leader>fa", ":Telescope find_files<CR>", nil) 
map("n", "<leader>fsd", ":Telescope lsp_document_symbols<CR>", nil) 
map("n", "<leader>fsa", ":Telescope lsp_dynamic_workspace_symbols<CR>", nil) 
map("n", "<leader>fso", ":SymbolsOutline<CR>", nil) 

map("n", "<leader>fa", ":Telescope find_files<CR>", nil) 
map("n", "<leader>b", ":Telescope buffers<CR>", nil)
map("n", "<leader>`", ":Telescope project<CR>", nil)
map("n", "<leader>t", ":Telescope<CR>", nil)
map("n", "<leader>c", ":Telescope commands<CR>", nil)

-- harpoon

map("n", "<leader>z", ':lua require("harpoon.mark").add_file()<CR>', nil)
map("n", "<leader>l", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', nil)
map("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>', nil)
map("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>', nil)
map("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>', nil)
map("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>', nil)
map("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>', nil)

map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })

map("n", "<C-l>", '<C-w>l', nil)
map("n", "<C-h>", '<C-w>h', nil)
map("n", "<C-j>", '<C-w>j', nil)
map("n", "<C-k>", '<C-w>k', nil)

map("n", "<leader>r", ':Telescope lsp_references<CR>', nil)
map("n", "<leader>a", ':lua vim.lsp.buf.code_action()<CR>', nil)

map("n", "<leader>m", ':Man<CR><C-w>j', nil)

map("n", "<leader>gl", ':vertical Git log -n 1000<CR>', nil)
map("n", "<leader>gdd", ':vertical Git diff<CR>', nil)
map("n", "<leader>gb", ':vertical Git blame<CR>', nil)
map("n", "<leader>gs", ':vertical Git<CR>', nil)

map("v", "<leader>\\", "<cmd>lua require('telescope').extensions.refactoring.refactors()<CR>", nil)

map("n", "<leader>h", "<cmd>ClangdSwitchSourceHeader<CR>", nil)

map("n", "<leader>wl", "<cmd>lua require('config.git_worktree').ListBranches()<CR>", nil)
map("n", "<leader>wa", "<cmd>lua require('config.git_worktree').CreateWorktree()<CR>", nil)

map("n", "<leader>e", ":Explore<CR>", nil)


map("n", "<leader>wc", ":lua require('config.git_worktree').CreateBranch()<CR>", nil)

map("n", "[s", ":ISwapWithLeft<CR>", nil)
map("n", "]s", ":ISwapWithRight<CR>", nil)


-- dap stuff
map("n", "<leader>dc", ':lua require("dap").continue()<CR>', nil)
map("n", "<leader>dso", ':lua require("dap").step_over()<CR>', nil)
map("n", "<leader>dsi", ':lua require("dap").step_into()<CR>', nil)
map("n", "<leader>dsO", ':lua require("dap").step_out()<CR>', nil)
map("n", "<leader>db", ':lua require("dap").toggle_breakpoint()<CR>', nil)
map("n", "<leader>dB", ':lua require("dap").set_breakpoint(vim.fn.input(\'Breakpoint condition: \'))<CR>', nil)
map("n", "<leader>dr", ':lua require("dap").repl.open()<CR>', nil)
map("n", "<leader>dl", ':lua require("dap").run_last()<CR>', nil)
map("n", "<leader>dt", ':DapTerminate<CR>', nil)
-- end dap

vim.api.nvim_command('set clipboard=unnamedplus')


vim.api.nvim_create_user_command('CephBuild', "let &makeprg=\"cd build; ninja -j4\" <q-args>", { nargs = 1 })



