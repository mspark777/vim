return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/nvim-cmp'
  },
  config = function()
    local lsp = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()


  end
}
