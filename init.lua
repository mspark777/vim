require("mspark777.options")
require("mspark777.lazy")
require("mspark777.keymaps")

if vim.g.mspark777_first_time then
	require("mspark777.mason")
end

vim.cmd("colorscheme tokyonight")
