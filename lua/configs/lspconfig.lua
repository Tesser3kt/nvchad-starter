require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "bashls",
  "clangd",
  "docker_compose_language_service",
  "dockerls",
  "emmet_language_server",
  "eslint",
  "jsonls",
  "lua_ls",
  "marksman",
  "nil_ls",
  "pylsp",
  "sqls",
  "tailwindcss",
  "texlab",
  "ts_ls",
  "tinymist",
}
vim.lsp.enable(servers)

-- Clangd setup
require("nvchad.configs.lspconfig").defaults()
local lspconfig = require "lspconfig"

lspconfig.clangd.setup {
  cmd = {
    "clangd",
    "--query-driver=/nix/store/*-gcc-*/bin/*",
    "--compile-commands-dir=build", -- optional if you symlinked to root
  },
  capabilities = require("nvchad.configs.lspconfig").capabilities,
}
