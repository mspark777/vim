return {
  "williamboman/mason.nvim",
  dependencies = { "williamboman/mason-lspconfig.nvim" },
  config = function()
    local mason = require("mason")
    mason.setup()

    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      automatic_installation = true,
      ensure_installed = {
        "lua_ls",
        "tsserver",
        "gopls",
        "pyright",
        "bashls",
        "cssls",
        "html",
        "jsonls",
        "yamlls",
        "eslint",
        "dockerls",
        "taplo",
        "clangd",
        "tailwindcss",
        "graphql"
      }
    })
  end
}
