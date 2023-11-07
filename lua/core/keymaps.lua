local keymap = vim.keymap

-- lsp
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
    keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- dap
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

local dap = require('dap')
local opts = { silent = true, noremap = true }
keymap.set("n", "<leader>dc", dap.continue, opts)
keymap.set("n", "<leader>dC", dap.clear_breakpoints, opts)
keymap.set("n", "<leader>b", dap.toggle_breakpoint, opts)
keymap.set("n", "<leader>dr", dap.repl.open, opts)

-- nvim-tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- rest
keymap.set('n', '<leader>hx', '<Plug>RestNvim')
keymap.set('n', '<leader>hpx', '<Plug>RestNvimPreview')

-- conform
local conform = require("conform")
keymap.set({ "n", "v" }, "<leader>mp", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end)

-- trouble
keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- barbar
opts = { silent = true, noremap = true }
keymap.set('n', "<A-,>", '<Cmd>BufferPrevious<CR>', opts)
keymap.set('n', "<A-.>", '<Cmd>BufferNext<CR>', opts)
keymap.set('n', "<A-c>", '<Cmd>BufferClose<CR>', opts)
