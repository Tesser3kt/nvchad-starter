local dap_python = require "dap-python"

-- Set the path to your Python interpreter with debugpy installed
-- You can customize this path based on your environment
-- Options:
-- 1. System Python: "/usr/bin/python"
-- 2. Virtual environment: "~/.virtualenvs/debugpy/bin/python"
-- 3. Conda environment: "~/miniconda3/envs/debugpy/bin/python"
dap_python.setup "python" -- or specify full path like "~/.virtualenvs/debugpy/bin/python"

-- Optional: Configure test runner
dap_python.test_runner = "pytest"

-- Add custom configurations
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
