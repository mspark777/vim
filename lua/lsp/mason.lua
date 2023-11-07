return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    mason.setup()

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({})
  end,
}
