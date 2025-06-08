vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard:append("unnamedplus")

if vim.fn.has("wsl") == 1 then
	vim.cmd([[
let g:clipboard = {
\   'name': 'WslClipboard',
\   'copy': {
\      '+': 'clip.exe',
\      '*': 'clip.exe',
\    },
\   'paste': {
\      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
\   },
\   'cache_enabled': 0,
\ }
  ]])
end

vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.vim_json_conceal = 0

vim.cmd([[
autocmd Filetype make setlocal noexpandtab
]])

vim.diagnostic.config({
	virtual_text = false,
})

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
	{ import = "plugins" },
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
		"pyright",
		-- Linter
		"golangci-lint",
		"pylint",
		-- Formatter
		"stylua",
		"black",
		"sqlfmt",
		-- DAP
		"node-debug2-adapter",
		"codelldb",
	}
	vim.cmd("MasonInstall " .. table.concat(mason_packages, " "))
end

-- lsp
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration." })
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { buffer = ev.buf, desc = "Go to definition." })
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Show information." })
		vim.keymap.set(
			"n",
			"gi",
			"<cmd>Telescope lsp_implementations<CR>",
			{ buffer = ev.buf, desc = "Go to implementation." }
		)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Show help" })
		vim.keymap.set(
			"n",
			"<leader>D",
			vim.lsp.buf.type_definition,
			{ buffer = ev.buf, desc = "Go to type definition." }
		)
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action." })
		vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { buffer = ev.buf, desc = "Go to reference." })
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, { buffer = ev.buf, desc = "Format." })
	end,
})

-- dap
vim.fn.sign_define("DapBreakpoint", {
	text = "🟥",
	texthl = "LspDiagnosticsSignError",
	linehl = "",
	numhl = "",
})

vim.fn.sign_define("DapBreakpointRejected", {
	text = "",
	texthl = "LspDiagnosticsSignHint",
	linehl = "",
	numhl = "",
})

vim.fn.sign_define("DapStopped", {
	text = "⭐️",
	texthl = "LspDiagnosticsSignInformation",
	linehl = "DiagnosticUnderlineInfo",
	numhl = "LspDiagnosticsSignInformation",
})

-- dap
local dap = require("dap")
vim.keymap.set("n", "<leader>dc", dap.continue, { silent = true, noremap = true, desc = "Debug continue." })
vim.keymap.set("n", "<leader>dC", dap.clear_breakpoints, { silent = true, noremap = true, desc = "Clear breakpoints." })
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { silent = true, noremap = true, desc = "Set breakpoint." })
vim.keymap.set("n", "<leader>dr", dap.repl.open, { silent = true, noremap = true, desc = "Toggle debugger repl." })

-- nvim-tree
vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file." })
vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find text." })
vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd." })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git file." })

-- conform
local conform = require("conform")
vim.keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)

-- trouble
vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>xX",
	"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
	{ desc = "Buffer Diagnostics (Trouble)" }
)
vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
vim.keymap.set("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
vim.keymap.set("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
vim.keymap.set(
	"n",
	"<leader>cl",
	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
	{ desc = "LSP Definitions / references / ... (Trouble)" }
)

-- barbar
vim.keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { silent = true, noremap = true })

-- which-key
vim.keymap.set("n", "<leader>?", function()
	require("which-key").show({ global = false })
end, { desc = "Buffer Local Keymaps (which-key)" })

-- lazygit
vim.keymap.set({ "n", "t" }, "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- lazydocker
vim.keymap.set({ "n", "t" }, "<leader>ld", "<Cmd>lua LazyDocker.toggle()<CR>", { desc = "LazyDocker" })

-- rest
vim.keymap.set("n", "<leader>lhcr", "<Cmd>Rest run<CR>", { desc = "Rest run" })
vim.keymap.set("n", "<leader>lhr", function()
	local name = vim.fn.input("name: ")
	vim.cmd("Rest run " .. name)
end, { desc = "Rest run {name}" })

-- markdown
vim.keymap.set("n", "<leader>lmp", "<Cmd>MarkdownPreviewToggle<CR>", { desc = "Rest run" })

-- custom
vim.keymap.set("n", "<A-t>", "<Cmd>botright terminal<CR>", { silent = true, desc = "Open termianl" })
