local mason_packages = {
	-- LS
	"lua-language-server",
	"typescript-language-server",
	"gopls",
	"bash-language-server",
	"css-lsp",
	"html-lsp",
	"json-lsp",
	"yaml-language-server",
	"eslint-lsp",
	"docker-compose-language-service",
	"dockerfile-language-server",
	"taplo",
	"graphql-language-service-cli",
	"postgrestools",
	"jq-lsp",
	"tailwindcss-language-server",
	"rust-analyzer",
	"pyright",
	"terraform-ls",
	-- Linter
	"golangci-lint",
	"pylint",
	-- Formatter
	"stylua",
	"black",
	"sqlfmt",
	"terraform",
	-- DAP
	"js-debug-adapter",
	"codelldb",
}
vim.cmd("MasonInstall " .. table.concat(mason_packages, " "))
