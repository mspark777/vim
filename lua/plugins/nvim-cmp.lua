return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"petertriho/cmp-git",
		"folke/lazydev.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		vim.opt.completeopt = "menu,menuone,noselect"
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "codeium" },
				{ name = "luasnip" },
				{ name = "lazydev", group_index = 0 },
			}, {
				{ name = "buffer" },
			}),
		})

		cmp.setup.filetype("gitcommit", {
			sources = cmp.config.sources({
				{ name = "git" },
			}, {
				{ name = "buffer" },
			}),
		})

		cmp.setup.cmdline({ "/", "?" }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
}
