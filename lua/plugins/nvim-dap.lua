return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				args = {
					os.getenv("HOME")
						.. "/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"${port}",
				},
			},
		}

		dap.configurations.typescript = {
			{
				name = "Attach to process",
				type = "pwa-node",
				request = "attach",
				processId = require("dap.utils").pick_process,
			},
		}

		dap.configurations.javascript = {
			{
				name = "Attach to process",
				type = "pwa-node",
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
