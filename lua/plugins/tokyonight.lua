return {
  'folke/tokyonight.nvim',
  config = function()
    require("tokyonight").setup({
      style = "night",
      light_style = "day",
    })
    vim.cmd [[colorscheme tokyonight]]
  end
}
