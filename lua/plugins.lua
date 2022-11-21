vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local setup = function(name)
  return string.format('require("setup/%s")', name)
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'MaxMEllon/vim-jsx-pretty'
  use 'rust-lang/rust.vim'
  use 'joukevandermaas/vim-ember-hbs'
  use 'fatih/vim-go'
  use 'vim-python/python-syntax'
  use 'mg979/vim-visual-multi'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'hashivim/vim-terraform'
  use "nvim-lua/plenary.nvim"
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'lewis6991/gitsigns.nvim',
    tag = 'release',
    config = setup('gitsigns')
  }
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  use {
    'Mofiqul/vscode.nvim',
    config = setup('vscode')
  }
  use {
    'kyazdani42/nvim-web-devicons',
    config = setup('nvim-web-devicons')
  }
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = setup('lualine')
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = setup('nvim-tree')
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)
