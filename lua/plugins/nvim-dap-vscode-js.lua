return {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = {
    "mfussenegger/nvim-dap",
    "microsoft/vscode-js-debug"
  },
  opts = {
    debugger_path = vim.fn.expand("$HOME/.local/share/nvim/lazy/vscode-js-debug"),
    adapters      = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }
  }
}
