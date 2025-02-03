return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Remove 'rust_analyzer' from this list
        clangd = {},
        gopls = {},
        cmake = {},
        zls = {},
        lua_ls = {},
        marksman = {},
      },
    },
  },
}
