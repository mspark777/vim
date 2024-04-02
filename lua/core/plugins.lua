local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local first_time = false
if not vim.loop.fs_stat(lazypath) then
	first_time = true
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "color" },
	{ import = "plugin" },
	{ import = "lsp" },
	{ import = "dap" },
})
vim.cmd("colorscheme tokyonight")

if first_time then
	local mason_packages = {
		-- LS
		"lua-language-server",
		"typescript-language-server",
		"gopls",
		"pyright",
		"bash-language-server",
		"css-lsp",
		"html-lsp ",
		"json-lsp",
		"yaml-language-server",
		"eslint-lsp",
		"docker-compose-language-service",
    "dockerfile-language-server",
		"taplo",
		"clangd",
		"graphql-language-service-cli",
		"sqlls",
		"jq-lsp ",
		"tailwindcss-language-server ",
		"rust-analyzer",
		-- linter
		"golangci-lint",
		"pylint",
		"cpplint",
		-- Formatter
		"clang-format",
		"stylua",
		"black",
		-- DAP
		"node-debug2-adapter",
	}
	vim.cmd("MasonInstall " .. table.concat(mason_packages, " "))
end
