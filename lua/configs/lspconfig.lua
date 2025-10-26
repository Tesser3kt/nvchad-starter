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

-- Ccls settings
vim.lsp.config.ccls = {
  cmd = { "ccls" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = vim.lsp.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
  settings = {
    ccls = {
      cache = {
        directory = ".ccls-cache",
      },
      highlight = {
        lsRanges = true,
      },
    },
  },
  lsp = {
    codelens = {
      enable = true,
      events = { "BufWritePost", "InsertLeave" },
    },
  },
}
