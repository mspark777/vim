return {
	"mfussenegger/nvim-dap",
	config = function()
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

		dap.configurations.javascript = {
			{
				name = "Attach to process",
				type = "node2",
				request = "attach",
				processId = require("dap.utils").pick_process,
			},
		}

		dap.adapters.lldb = {
			type = "executable",
			command = "lldb-dap",
		}

		dap.configurations.rust = {
			{
				name = "Launch",
				type = "lldb",
				request = "attach",
				pid = require("dap.utils").pick_process,
			},
		}
	end,
}
