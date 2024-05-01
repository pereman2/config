require("config.lsp.mason")
-- require("config.lsp.handlers").setup()
require("config.lsp.null-ls") 
require("symbols-outline").setup({

  highlight_hovered_item = true,
  show_guides = true,
  auto_preview = false,
  position = 'left',
  relative_width = true,
  width = 40,
  auto_close = false,
  show_numbers = true,
  show_relative_numbers = false,
  show_symbol_details = true,
  preview_bg_highlight = 'Pmenu',
  autofold_depth = nil,
  auto_unfold_hover = false,
  fold_markers = { '>', 'v' },
  wrap = false,
  keymaps = { -- These keymaps can be a string or a table for multiple keys
  close = {"<Esc>", "q"},
  goto_location = "<Cr>",
  focus_location = "o",
  hover_symbol = "<C-space>",
  toggle_preview = "K",
  rename_symbol = "r",
  code_actions = "a",
  fold = "h",
  unfold = "l",
  fold_all = "W",
  unfold_all = "E",
  fold_reset = "R",
},
lsp_blacklist = {},
symbol_blacklist = {},
symbols = {
  File = { icon = "", hl = "@text.uri" },
  Module = { icon = "", hl = "@namespace" },
  Namespace = { icon = "", hl = "@namespace" },
  Package = { icon = "", hl = "@namespace" },
  Class = { icon = "𝓒", hl = "@type" },
  Method = { icon = "ƒ", hl = "@method" },
  Property = { icon = "", hl = "@method" },
  Field = { icon = "", hl = "@field" },
  Constructor = { icon = "", hl = "@constructor" },
  Enum = { icon = "ℰ", hl = "@type" },
  Interface = { icon = "ﰮ", hl = "@type" },
  Function = { icon = "", hl = "@function" },
  Variable = { icon = "", hl = "@constant" },
  Constant = { icon = "", hl = "@constant" },
  String = { icon = "𝓐", hl = "@string" },
  Number = { icon = "#", hl = "@number" },
  Boolean = { icon = "⊨", hl = "@boolean" },
  Array = { icon = "", hl = "@constant" },
  Object = { icon = "⦿", hl = "@type" },
  Key = { icon = "🔐", hl = "@type" },
  Null = { icon = "NULL", hl = "@type" },
  EnumMember = { icon = "", hl = "@field" },
  Struct = { icon = "𝓢", hl = "@type" },
  Event = { icon = "🗲", hl = "@type" },
  Operator = { icon = "+", hl = "@operator" },
  TypeParameter = { icon = "𝙏", hl = "@parameter" },
  Component = { icon = "", hl = "@function" },
  Fragment = { icon = "", hl = "@constant" },
},
})

require("config.lsp.lsp_signature")
require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = '',
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}

