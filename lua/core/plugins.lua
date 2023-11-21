local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local first_time = false
if not vim.loop.fs_stat(lazypath) then
  first_time = true
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "color" },
  { import = "plugin" },
  { import = "lsp" },
  { import = "dap" },
})
vim.cmd("colorscheme tokyonight")


if first_time then
  vim.cmd("source ts.vim")
  vim.cmd("source ls.vim")
end

