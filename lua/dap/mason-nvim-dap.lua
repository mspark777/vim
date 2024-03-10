return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("mason-nvim-dap").setup({
			ensure_installed = {
				"node2",
			},
		})

		local dap = require("dap")
		dap.adapters.node2 = {
			type = "executable",
			command = "node",
			args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
		}
		dap.configurations.typescript = {
			{
				name = "Attach to process",
				type = "node2",
				request = "attach",
				processId = require("dap.utils").pick_process,
			},
		}
	end,
}
