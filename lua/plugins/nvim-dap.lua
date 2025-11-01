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
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				args = {},
				initCommands = function()
					local rustc_sysroot = vim.fn.trim(vim.fn.system("rustc --print sysroot"))
					assert(
						vim.v.shell_error == 0,
						"failed to get rust sysroot using `rustc --print sysroot`: " .. rustc_sysroot
					)

					local script_file = rustc_sysroot .. "/lib/rustlib/etc/lldb_lookup.py"
					local commands_file = rustc_sysroot .. "/lib/rustlib/etc/lldb_commands"

					return {
						([[!command script import '%s']]):format(script_file),
						([[command source '%s']]):format(commands_file),
					}
				end,
				-- ...,
			},
		}
	end,
}
