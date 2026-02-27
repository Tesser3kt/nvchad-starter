require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal" })
map("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", { desc = "Correct last spelling mistake." })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- DAP (Debug Adapter Protocol) keybindings
local dap = require "dap"
local dapui = require "dapui"

map("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP Toggle breakpoint" })
map("n", "<leader>dc", dap.continue, { desc = "DAP Continue" })
map("n", "<leader>di", dap.step_into, { desc = "DAP Step into" })
map("n", "<leader>do", dap.step_over, { desc = "DAP Step over" })
map("n", "<leader>dO", dap.step_out, { desc = "DAP Step out" })
map("n", "<leader>dr", dap.repl.open, { desc = "DAP Open REPL" })
map("n", "<leader>dl", dap.run_last, { desc = "DAP Run last" })
map("n", "<leader>dt", dap.terminate, { desc = "DAP Terminate" })
map("n", "<leader>du", dapui.toggle, { desc = "DAP Toggle UI" })

-- Python-specific DAP keybindings
map("n", "<leader>dpt", function()
  require("dap-python").test_method()
end, { desc = "DAP Python test method" })
map("n", "<leader>dpc", function()
  require("dap-python").test_class()
end, { desc = "DAP Python test class" })
