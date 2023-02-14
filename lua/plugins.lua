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

local function callback_vim_enter(data)
  local fn = vim.fn
  fn.sign_define('DapBreakpoint', {
    text = "🟥",
    texthl = "LspDiagnosticsSignError",
    linehl = "",
    numhl = "",
  })

  fn.sign_define('DapBreakpointRejected', {
    text = "",
    texthl = "LspDiagnosticsSignHint",
    linehl = "",
    numhl = "",
  })

  fn.sign_define('DapStopped', {
    text = "⭐️",
    texthl = "LspDiagnosticsSignInformation",
    linehl = "DiagnosticUnderlineInfo",
    numhl = "LspDiagnosticsSignInformation",
  })

  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = callback_vim_enter })

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
  use {
    "microsoft/vscode-js-debug",
    opt = true,
    run = "npm install --legacy-peer-deps && npm run compile"
  }
  use {
    "mxsdev/nvim-dap-vscode-js",
    requires = { "mfussenegger/nvim-dap", "microsoft/vscode-js-debug" },
    config = setup('dap-vscode-js')
  }
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
