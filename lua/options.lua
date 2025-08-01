require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

-- Add luasnip snippets
local g = vim.g
g.lua_snippets_path = "~/.config/nvim/snippets/"

-- Set global VimTex options
g.vimtex_compiler_latexmk_engines = {
  ["_"] = "-pdf",
}
g.vimtex_view_method = "zathura"
g.vimtex_view_general_viewer = "zathura"
g.vimtex_compiler_progname = "nvr"
g.vimtex_fold_enabled = 1
g.vimtex_format_enabled = 1
