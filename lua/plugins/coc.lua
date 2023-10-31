function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    vim.api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end

local function config()
  local keyset = vim.keymap.set
  local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }

  keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
  keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
  keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
  keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
  keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
  keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
  keyset("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })
  keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
  keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
  keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
  keyset("n", "gr", "<Plug>(coc-references)", { silent = true })
  keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', { silent = true })


  vim.api.nvim_create_augroup("CocGroup", {})
  vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
  })

  vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
  })

  vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
  })


  opts = { silent = true, nowait = true }
  keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
  keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

  vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})
  vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", { nargs = '?' })
  vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})
  vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

  opts = { silent = true, nowait = true }
  keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
  keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
  keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
  keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
  keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
  keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
  keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
  keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)
end

return {
  'neoclide/coc.nvim',
  branch = 'release',
  config = config
}
