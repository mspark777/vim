local opt = vim.opt

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.swapfile = false
opt.writebackup = false
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.title = true
opt.signcolumn = "yes"
opt.list = true
opt.termguicolors = true
opt.background = "dark"
opt.splitright = true
opt.splitbelow = true
opt.autoindent = true
opt.wrap = false
opt.smartcase = true
opt.ignorecase = true
opt.clipboard:append("unnamedplus")

if vim.fn.has("wsl") == 1 then
	vim.cmd([[
let g:clipboard = {
\   'name': 'WslClipboard',
\   'copy': {
\      '+': 'clip.exe',
\      '*': 'clip.exe',
\    },
\   'paste': {
\      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\   },
\   'cache_enabled': 0,
\ }
  ]])
end

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.vim_json_conceal = 0

vim.cmd([[
autocmd Filetype make setlocal noexpandtab
]])

vim.diagnostic.config({
	virtual_text = false,
})
