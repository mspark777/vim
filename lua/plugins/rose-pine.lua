return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require('rose-pine').setup({
      --- @usage 'auto'|'main'|'moon'|'dawn'
      variant = 'main',
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = 'main',
      vim.cmd('colorscheme rose-pine')
    })
  end
}
