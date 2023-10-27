local function setup()
  require("dap-vscode-js").setup({
    debugger_path = vim.fn.expand("$HOME/.local/share/nvim/lazy/vscode-js-debug"),
    adapters      = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
  })

  require('dap').configurations.typescript = {
    {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require 'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    }
  }
end

return {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = {
    "mfussenegger/nvim-dap", "microsoft/vscode-js-debug"
  },
  config = setup
}
