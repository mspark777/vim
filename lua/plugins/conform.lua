return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	tag = "stable",
	opts = {},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				handlebars = { "prettier" },
				svg = { "prettier" },
				rust = { "rustfmt" },
				python = { "black" },
				sql = { "sqlfmt" },
				toml = { "taplo" },
				["_"] = { "trim_whitespace" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		})
	end,
}
