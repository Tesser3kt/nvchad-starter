return {
  {
    "kevinhwang91/nvim-ufo",
    name = "ufo",
    enabled = true,
    dependencies = {
      "kevinhwang91/promise-async'}", -- Required for git operations
    },
    config = function()
      require("ufo").setup {
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      }
    end,
  },
}
