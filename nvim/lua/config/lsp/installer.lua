local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require('lspconfig')
-- local utils = require "utils"

local M = {}

function M.setup(servers, options)
  for server_name, _ in pairs(servers) do
    lspconfig[server_name].setup()
  end
end

return M
