local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
    return
end

local servers = {
    rust_analyzer = {
        inlay_hints = { enabled = true }
    },
    clangd = {},
    -- tsserver = {},
    -- cssmodules_ls = {},
    -- emmet_ls = {},
    -- html = {},
    -- pyright = {},
    bashls = {},
    gopls = {
        cmd = { "gopls" }
    },
    -- lua_ls = {}, configured with neodev
    cmake = {},
    zls = {
        inlay_hints = { enabled = true }
    },
}

-- Here we declare which settings to pass to the mason, and also ensure servers are installed. If not, they will be installed automatically.
local settings = {
    ui = {
        border = "rounded",
        icons = {
            package_installed = "◍",
            package_pending = "◍",
            package_uninstalled = "◍",
        },
    },
    log_level = vim.log.levels.INFO,
    max_concurrent_installers = 4,
    ensure_installed = servers,
    automatic_installation = true,
    inlay_hints = { enabled = true },
}

mason.setup(settings)
mason_lspconfig.setup {
    ensure_installed = servers,
    automatic_installation = true,
    inlay_hints = { enabled = true },

}

-- we'll need to call lspconfig to pass our server to the native neovim lspconfig.
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end

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

-- IMPORTANT: make sure to setup neodev BEFORE lspconfig
require("neodev").setup({
    -- add any options here, or leave empty to use the default settings
})

-- example to setup lua_ls and enable call snippets
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace"
            }
        }
    }
})

-- loop through the servers
for server, opts in pairs(servers) do
    opts["on_attach"] = on_attach
    opts["inlay_hints"] = { enabled = true }

    -- get the server name
    server = vim.split(server, "@")[1]

    -- pass them to lspconfig
    lspconfig[server].setup(opts)
end

require('lspconfig').clangd.setup {
    cmd = { "/usr/bin/clangd" }
}
