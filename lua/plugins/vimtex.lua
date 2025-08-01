return {
  {
    "lervag/vimtex",
    event = "BufEnter *.tex",
    cmd = { "VimtexCompile", "VimtexView" },
    keys = {
      { "<leader>vc", "<cmd>VimtexCompile<cr>", desc = "Compile opened LaTeX file." },
      { "<leader>vv", "<cmd>VimtexView<cr>", desc = "View compiled LaTeX file." },
    }
  }
}
