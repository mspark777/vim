return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require('dap')
    dap.configurations.typescript = {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require 'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    }
  end
}
