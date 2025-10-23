require("mspark777.options")
require("mspark777.lazy")
require("mspark777.keymaps")
vim.cmd("colorscheme tokyonight")

if vim.g.mspark777_first_time then
	require("mspark777.mason")
end
