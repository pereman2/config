
local M = {}

M.MakeOptions = function ()
  local command = vim.fn.input("command: ")
  vim.opt.makeprg = command
end

M.Make = function ()
  local prg = vim.api.nvim_get_option('makeprg')
  vim.cmd("AsyncDo " .. prg)
  vim.cmd("vertical copen")
end

return M;

