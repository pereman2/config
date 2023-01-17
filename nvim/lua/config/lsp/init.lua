local M = {}

local root_files_py = {
  "pyrightconfig.json",
  ".git",
}

local servers = {
  gopls = {},
  html = {},
  jsonls = {},
  pyright = {
    root_dir = require("lspconfig.util").root_pattern(unpack(root_files_py)),

    settings = {
      python = {
        analysis = {
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticMode = "workspace",
        },
      },
    },

  },
  rust_analyzer = {},
  sumneko_lua = {},
  tsserver = { },
  vimls = {},
  clangd = {
      cmd = {
          "clangd",
          "--pch-storage=disk",
          "--clang-tidy",
          "--all-scopes-completion",
          "--log=error", -- error, info, verbose
          "--header-insertion=never",
          "-j=1"
      },
  },
  Lua = {
      settings = {
        diagnostics = {
            globals = {'vim'},
        }
      }
  },
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Configure key mappings
  require("config.lsp.keymaps").setup(client, bufnr)
end

local default_opts = {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
}

function M.setup()
  require("config.lsp.installer").setup(servers, default_opts)
end
-- vim.lsp.set_log_level("debug")
return M
