return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			sync_install = false,
			ensure_installed = {},
			ignore_install = {},
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}
