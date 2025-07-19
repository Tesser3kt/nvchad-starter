require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "bashls",
  "ccls",
  "docker_compose_language_service",
  "dockerls",
  "emmet_language_server",
  "eslint",
  "jsonls",
  "lua_ls",
  "marksman",
  "nixd",
  "pylsp",
  "sqls",
  "tailwindcss",
  "texlab",
  "ts_ls",
  "tinymist",
}
vim.lsp.enable(servers)

-- Mason plugins
require("lspconfig").html.setup{}
require("lspconfig").cssls.setup{}
require("lspconfig").bashls.setup{}
require("lspconfig").ccls.setup{}
require("lspconfig").docker_compose_language_service.setup{}
require("lspconfig").dockerls.setup{}
require("lspconfig").emmet_language_server.setup{}
require("lspconfig").eslint.setup{}
require("lspconfig").jsonls.setup{}
require("lspconfig").lua_ls.setup{}
require("lspconfig").marksman.setup{}
require("lspconfig").nixd.setup{}
require("lspconfig").pylsp.setup{}
require("lspconfig").sqls.setup{}
require("lspconfig").tailwindcss.setup{}
require("lspconfig").texlab.setup{}
require("lspconfig").ts_ls.setup{}
require("lspconfig").tinymist.setup{}

-- read :h vim.lsp.config for changing options of lsp servers
