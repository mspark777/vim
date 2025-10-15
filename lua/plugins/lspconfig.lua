return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"folke/neoconf.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"antosha417/nvim-lsp-file-operations",
	},
	config = function()
		require("neoconf").setup({})

		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		local lsp_list = {
			"lua_ls",
			"ts_ls",
			"gopls",
			"bashls",
			"cssls",
			"html",
			"jsonls",
			"yamlls",
			"eslint",
			"docker_compose_language_service",
			"dockerls",
			"taplo",
			"graphql",
			"postgres_lsp",
			"jqls",
			"tailwindcss",
			"rust_analyzer",
			"pyright",
		}

		for _, value in ipairs(lsp_list) do
			vim.lsp.config(value, {
				capabilities = capabilities,
			})
			vim.lsp.enable(value)
		end
	end,
}
