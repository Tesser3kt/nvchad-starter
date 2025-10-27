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

-- read :h vim.lsp.config for changing options of lsp servers
