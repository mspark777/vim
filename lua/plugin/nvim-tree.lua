return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")
    vim.g.loaded_netrw       = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      git = {
        ignore = false
      }
    })
  end
}
