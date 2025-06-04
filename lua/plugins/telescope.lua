return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"rest-nvim/rest.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-s>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
						["<C-h>"] = "which_key",
					},
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("rest")
	end,
}
