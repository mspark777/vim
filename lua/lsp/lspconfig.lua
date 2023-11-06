return {
  'neovim/nvim-lspconfig',
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    "antosha417/nvim-lsp-file-operations"
  },
  config = function()
    local keymap = vim.keymap
    keymap.set('n', '<space>e', vim.diagnostic.open_float)
    keymap.set('n', '[d', vim.diagnostic.goto_prev)
    keymap.set('n', ']d', vim.diagnostic.goto_next)
    keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }
        keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        keymap.set('n', '<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        keymap.set('n', '<space>f', function()
          vim.lsp.buf.format { async = true }
        end, opts)
      end,
    })

    local lspconfig = require('lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local capabilities = cmp_nvim_lsp.default_capabilities()
    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })

    lspconfig.pyright.setup({
      capabilities = capabilities
    })
  end
}
