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

    local keymap = vim.keymap
    local opts = {silent = true, noremap = true}
    keymap.set("n", "<leader>dc", dap.continue, opts)
    keymap.set("n", "<leader>dC", dap.clear_breakpoints, opts)
    keymap.set("n", "<leader>b", dap.toggle_breakpoint, opts)
    keymap.set("n", "<leader>dr", dap.repl.open, opts)
  end
}
