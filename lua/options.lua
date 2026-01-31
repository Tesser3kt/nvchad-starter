require "nvchad.options"

local o = vim.o
local g = vim.g
local fn = vim.fn

o.cursorlineopt = "both" -- to enable cursorline!

-- Add luasnip snippets
g.lua_snippets_path = "~/.config/nvim/snippets/"

-- Set global VimTex options
g.vimtex_compiler_latexmk_engines = {
  ["_"] = "-pdf",
}
g.vimtex_view_method = "zathura"
g.vimtex_view_general_viewer = "zathura"
g.vimtex_callback_progpath = "/etc/profiles/per-user/tesserekt/bin/nvim"
g.vimtex_fold_enabled = 1
g.vimtex_format_enabled = 1
g.tex_conceal = "abdgm"
g.conceallevel = 2
g.tex_conceal_frac = 1
g.tex_superscripts = 1
g.tex_subscripts = 1

-- Set global typst options
g.typst_pdf_viewer = "zathura"
g.typst_conceal = 1
g.typst_conceal_math = 1
g.typst_conceal_emoji = 1
g.typst_folding = 1

-- Set global haskell options
g.haskell_enable_quantification = 1
g.haskell_enable_recursivedo = 1
g.haskell_enable_arrowsyntax = 1
g.haskell_enable_pattern_synonyms = 1
g.haskell_enable_typeroles = 1
g.haskell_enable_static_pointers = 1
g.haskell_backpack = 1
