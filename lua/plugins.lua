vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

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

local packer = require('packer')

return packer.startup(function(use)
      use 'wbthomason/packer.nvim'
      use 'mg979/vim-visual-multi'
      use 'lukas-reineke/indent-blankline.nvim'
      use 'nvim-lua/plenary.nvim'
      use 'sheerun/vim-polyglot'
      use 'mfussenegger/nvim-dap'
      use 'prisma/vim-prisma'
      use({
          "iamcco/markdown-preview.nvim",
          run = "cd app && npm install",
          setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
          ft = { "markdown" },
      })
      use {
          'nvim-treesitter/nvim-treesitter',
          run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
          end,
          config = setup('treesitter')
      }
      use {
          "rest-nvim/rest.nvim",
          requires = { "nvim-lua/plenary.nvim" },
          config = setup('rest-nvim')
      }
      use {
          'theHamsta/nvim-dap-virtual-text',
          requires = { 'mfussenegger/nvim-dap', 'nvim-treesitter/nvim-treesitter' },
          config = setup('nvim-dap-virtual-text')
      }
      use {
          'nvim-telescope/telescope.nvim',
          tag = '0.1.1',
          requires = { 'nvim-lua/plenary.nvim' }
      }
      use {
          'lewis6991/gitsigns.nvim',
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
