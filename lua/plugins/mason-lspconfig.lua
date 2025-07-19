return {
   -- Mason plugins
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      if not opts.ensure_installed then opts.ensure_installed = {} end
      vim.list_extend(opts.ensure_installed, {
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
      })
    end,
  },
}
