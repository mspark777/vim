return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			ignore_install = {},
			auto_install = true,
			sync_install = true,
			ensure_installed = {
				"bash",
				"comment",
				"css",
				"diff",
				"dockerfile",
				"git_rebase",
				"gitattributes",
				"gitignore",
				"gitcommit",
				"glimmer",
				"go",
				"gomod",
				"gosum",
				"graphql",
				"hcl",
				"html",
				"http",
				"javascript",
				"jq",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"regex",
				"sql",
				"terraform",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
				"csv",
				"xml",
				"ini",
				"scss",
				"ssh_config",
				"tmux",
				"rust",
				"python",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
		})
	end,
}
