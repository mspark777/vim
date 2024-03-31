return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		mason.setup()

		local mason_lspconfig = require("mason-lspconfig")
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"tsserver",
				"gopls",
				"pyright",
				"bashls",
				"cssls",
				"html",
				"jsonls",
				"yamlls",
				"eslint",
				"dockerls",
				"taplo",
				"clangd",
				"graphql",
				"sqlls",
				"docker_compose_language_service",
				"jqls",
				"tailwindcss",
				"rust_analyzer",
			},
		})
	end,
}
