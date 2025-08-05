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
  "arduino-language-server",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
local MY_FQBN = "Inkplate_Boards:esp32:Inkplate10V2"
vim.lsp.config("arduino-language-server", {
  cmd = {
    "arduino-language-server",
    "-cli-config",
    "$HOME/.config/nvim/lua/configs/arduino/arduino-cli.yaml",
    "-fqbn",
    MY_FQBN,
  },
})
