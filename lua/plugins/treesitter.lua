return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "typescript",
      "tsx",
      "html",
      "javascript",
      "css",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      disable = { "tex", "latex" },
    },
  },
}
