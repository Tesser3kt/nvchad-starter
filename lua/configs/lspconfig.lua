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
local util = require "lspconfig.util"
local server_config = {
  filetypes = { "c", "cpp", "objc", "objcpp", "opencl" },
  root_dir = function(fname)
    return util.root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname)
      or util.find_git_ancestor(fname)
  end,
  init_options = {
    cache = {
      directory = vim.env.XDG_CACHE_HOME .. "/ccls/",
      -- or vim.fs.normalize "~/.cache/ccls" -- if on nvim 0.8 or higher
    },
  },
  --on_attach = require("my.attach").func,
  --capabilities = my_caps_table_or_func
}
vim.lsp.config.ccls = {
  lsp = {
    lspconfig = server_config,
    codelens = {
      enable = true,
      events = { "BufWritePost", "InsertLeave" },
    },
  },
}
