local keymap = vim.keymap

-- lsp
keymap.set("n", "<space>e", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = ev.buf, desc = "Go to declaration." })
		keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { buffer = ev.buf, desc = "Go to definition." })
		keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "Show information." })
		keymap.set(
			"n",
			"gi",
			"<cmd>Telescope lsp_implementations<CR>",
			{ buffer = ev.buf, desc = "Go to implementation." }
		)
		keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { buffer = ev.buf, desc = "Show help" })
		keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { buffer = ev.buf, desc = "Go to type definition." })
		keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = ev.buf, desc = "Code action." })
		keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", { buffer = ev.buf, desc = "Go to reference." })
		keymap.set("n", "<space>f", function()
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

local dap = require("dap")
keymap.set("n", "<leader>dc", dap.continue, { silent = true, noremap = true, desc = "Debug continue." })
keymap.set("n", "<leader>dC", dap.clear_breakpoints, { silent = true, noremap = true, desc = "Clear breakpoints." })
keymap.set("n", "<leader>b", dap.toggle_breakpoint, { silent = true, noremap = true, desc = "Set breakpoint." })
keymap.set("n", "<leader>dr", dap.repl.open, { silent = true, noremap = true, desc = "Toggle debugger repl." })

-- nvim-tree
keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")

-- telescope
-- plugin/telescope.lua
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file." })
keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find text." })
keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd." })
keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find git file." })

-- conform
local conform = require("conform")
keymap.set({ "n", "v" }, "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end)

-- trouble
keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Toggle trouble." })
keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Toggle trouble current" })

-- barbar
keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", { silent = true, noremap = true })
keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", { silent = true, noremap = true })
keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", { silent = true, noremap = true })

-- custom
keymap.set("n", "<A-t>", "<Cmd>botright terminal<CR>", { silent = true, desc = "Open termianl" })
