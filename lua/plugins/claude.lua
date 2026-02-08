return {
  {
    "greggh/claude-code.nvim",
    cmd = "ClaudeCode",
    event = "InsertEnter",
    name = "claude",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    config = function()
      require("claude-code").setup()
    end,
  },
}
