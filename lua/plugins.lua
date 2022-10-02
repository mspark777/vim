vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'rust-lang/rust.vim'
  use 'joukevandermaas/vim-ember-hbs'
  use 'fatih/vim-go'
  use 'vim-python/python-syntax'
  use 'ctrlpvim/ctrlp.vim'
  use 'dyng/ctrlsf.vim'
  use 'mg979/vim-visual-multi'
  use {
    'Mofiqul/vscode.nvim',
    config = require('vscode').setup({})
  }
  use {
    'kyazdani42/nvim-web-devicons',
    config = require('nvim-web-devicons').setup({})
  }
  use {'romgrk/barbar.nvim'}
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    config = require('bufferline').setup({
      options = {
        buffer_close_icon = "",
        close_command = "Bdelete %d",
        close_icon = "",
        indicator_icon = " ",
        left_trunc_marker = "",
        modified_icon = "●",
        offsets = { { filetype = "NvimTree", text = "EXPLORER", text_align = "center" } },
        right_mouse_command = "Bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = false,
        show_tab_indicators = true,
      },
      highlights = {
          fill = {
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "StatusLineNC" },
          },
          background = {
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "StatusLine" },
          },
          buffer_visible = {
              gui = "",
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "Normal" },
          },
          buffer_selected = {
              gui = "",
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "Normal" },
          },
          separator = {
              guifg = { attribute = "bg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "StatusLine" },
          },
          separator_selected = {
              guifg = { attribute = "fg", highlight = "Special" },
              guibg = { attribute = "bg", highlight = "Normal" },
          },
          separator_visible = {
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "StatusLineNC" },
          },
          close_button = {
              guifg = { attribute = "fg", highlight = "Normal" },
              guibg = { attribute = "bg", highlight = "StatusLine" },
          },
          close_button_selected = {
              guifg = { attribute = "fg", highlight = "normal" },
              guibg = { attribute = "bg", highlight = "normal" },
          },
          close_button_visible = {
              guifg = { attribute = "fg", highlight = "normal" },
              guibg = { attribute = "bg", highlight = "normal" },
          },
      },
    })
  }
  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release',
    config = require('gitsigns').setup({
        current_line_blame = true
    })
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    config = require('lualine').setup({
      options = {
        theme = 'vscode',
      },
    })
  }
  use {
    'kyazdani42/nvim-tree.lua',
    config = require('nvim-tree').setup({
      open_on_setup = true
    })
  }
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
end)
