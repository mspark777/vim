local first_time = false
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	first_time = true
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "plugin" },
	{ import = "lsp" },
	{ import = "dap" },
}, {
	change_detection = {
		notify = false,
	},
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
		"html-lsp",
		"json-lsp",
		"yaml-language-server",
		"eslint-lsp",
		"docker-compose-language-service",
		"dockerfile-language-server",
		"taplo",
		"graphql-language-service-cli",
		"sqlls",
		"jq-lsp",
		"tailwindcss-language-server",
		"rust-analyzer",
		-- Linter
		"golangci-lint",
		"pylint",
		"cpplint",
		-- Formatter
		"stylua",
		"black",
		-- DAP
		"node-debug2-adapter",
	}
	vim.cmd("MasonInstall " .. table.concat(mason_packages, " "))
end
