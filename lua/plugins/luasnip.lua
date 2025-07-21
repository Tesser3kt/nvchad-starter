return {
  --- Insta jump CMP mappings
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      { "rafamadriz/friendly-snippets", lazy = true },
      {
        "hrsh7th/nvim-cmp",
        dependencies = { { "saadparwaiz1/cmp_luasnip", lazy = true } },
        opts = function(_, opts)
          local luasnip, cmp = require "luasnip", require "cmp"

          if not opts.snippet then
            opts.snippet = {}
          end
          opts.snippet.expand = function(args)
            luasnip.lsp_expand(args.body)
          end

          if not opts.mappings then
            opts.mappings = {}
          end
          opts.mapping["<Tab>"] = cmp.mapping(function(fallback)
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" })
          opts.mapping["<S-Tab>"] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" })
        end,
      },
    },
  },
}
