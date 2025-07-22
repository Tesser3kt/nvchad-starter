return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        {
          name = "luasnip",
          priority = 2000,
        },
        {
          name = "nvim_lsp",
          priority = 1000,
        },
        {
          name = "buffer",
          priority = 500,
        },
        {
          name = "path",
          priority = 100,
        },
      },
    },
  },
}
