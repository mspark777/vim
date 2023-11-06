return {
  'neovim/nvim-lspconfig',
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    "antosha417/nvim-lsp-file-operations"
  },
  config = function()
    local lspconfig = require('lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local capabilities = cmp_nvim_lsp.default_capabilities()
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          dianostics = {
            global = {"vim"}
          },
          workspace = {
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true
            }
          }
        }
      }
    })

    lspconfig.tsserver.setup({
      capabilities = capabilities
    })

    lspconfig.gopls.setup({
      capabilities = capabilities
    })

    lspconfig.pyright.setup({
      capabilities = capabilities
    })

    lspconfig.bashls.setup({
      capabilities = capabilities
    })

    lspconfig.cssls.setup({
      capabilities = capabilities
    })

    lspconfig.html.setup({
      capabilities = capabilities
    })

    lspconfig.jsonls.setup({
      capabilities = capabilities
    })

    lspconfig.yamlls.setup({
      capabilities = capabilities
    })

    lspconfig.eslint.setup({
      capabilities = capabilities
    })

    lspconfig.dockerls.setup({
      capabilities = capabilities
    })

    lspconfig.taplo.setup({
      capabilities = capabilities
    })

    lspconfig.clangd.setup({
      capabilities = capabilities
    })

    lspconfig.tailwindcss.setup({
      capabilities = capabilities
    })

    lspconfig.graphql.setup({
      capabilities = capabilities
    })
   end
}
