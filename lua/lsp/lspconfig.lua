return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"williamboman/mason.nvim",
		"folke/neoconf.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"antosha417/nvim-lsp-file-operations",
	},
	config = function()
		require("neoconf").setup({})

		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					dianostics = {
						global = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		local lsp_list = {
			"tsserver",
			"gopls",
			"pyright",
			"bashls",
			"cssls",
			"html",
			"jsonls",
			"yamlls",
			"eslint",
			"docker_compose_language_service",
			"dockerls",
			"taplo",
			"clangd",
			"graphql",
			"sqlls",
			"jqls",
			"tailwindcss",
			"rust_analyzer",
		}

		for _, value in ipairs(lsp_list) do
			lspconfig[value].setup({
				capabilities = capabilities,
			})
		end
	end,
}
