return {
  {
    "kevinhwang91/nvim-ufo",
    name = "ufo",
    enabled = true,
    dependencies = {
      "kevinhwang91/promise-async", -- Required for git operations
    },
    keys = {
      { "zo", desc = "Open fold" },
      { "zO", desc = "Open fold recursively" },
      { "zc", desc = "Close fold" },
      { "zC", desc = "Close fold recursively" },
      { "za", desc = "Toggle fold" },
      { "zA", desc = "Toggle fold recursively" },
      { "zv", desc = "Show cursor line" },
      { "zM", desc = "Close all folds" },
      { "zR", desc = "Open all folds" },
      { "zm", desc = "Fold more" },
      { "zr", desc = "Fold less" },
      { "zx", desc = "Update folds" },
      { "zz", desc = "Center cursor" },
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
