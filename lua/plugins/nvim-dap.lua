return {
  "mfussenegger/nvim-dap",
  config = function()
    require('dap').configurations.typescript = {
      type = "pwa-node",
      request = "attach",
      name = "Attach",
      processId = require 'dap.utils'.pick_process,
      cwd = "${workspaceFolder}",
    }

    vim.fn.sign_define('DapBreakpoint', {
      text = "🟥",
      texthl = "LspDiagnosticsSignError",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define('DapBreakpointRejected', {
      text = "",
      texthl = "LspDiagnosticsSignHint",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define('DapStopped', {
      text = "⭐️",
      texthl = "LspDiagnosticsSignInformation",
      linehl = "DiagnosticUnderlineInfo",
      numhl = "LspDiagnosticsSignInformation",
    })
  end
}
