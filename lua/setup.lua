vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors    = true

local lazypath           = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function(data)
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
    local directory = vim.fn.isdirectory(data.file) == 1

    if not no_name and not directory then
      return
    end

    if directory then
      vim.cmd.cd(data.file)
    end

    require("nvim-tree.api").tree.open()
  end
})


require("lazy").setup("plugins")
vim.cmd [[colorscheme tokyonight]]
