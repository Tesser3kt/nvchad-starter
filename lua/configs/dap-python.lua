local dap_python = require "dap-python"

dap_python.setup "python"

dap_python.test_runner = "pytest"

table.insert(require("dap").configurations.python, {
  type = "python",
  request = "launch",
  name = "Launch file with arguments",
  program = "${file}",
  args = function()
    local args_string = vim.fn.input "Arguments: "
    return vim.split(args_string, " +")
  end,
  console = "integratedTerminal",
})
