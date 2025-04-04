return {

	"mfussenegger/nvim-dap",
	dependencies = {
		{
      "rcarriga/nvim-dap-ui", -- UI opcional para visualizar variáveis, call stack, etc.
      "nvim-neotest/nvim-nio",
			"tomblind/local-lua-debugger-vscode",
			dir = vim.fn.stdpath("data") .. "/lazy/local-lua-debugger-vscode",
			build = "npm install && npm run build",
		},
	},
	config = function()
		local dap = require("dap")
		dap.adapters["local-lua"] = {
			type = "executable",
			command = "node",
			args = {
				vim.fn.stdpath("data") .. "/lazy/local-lua-debugger-vscode/extension/debugAdapter.js",
			},
			enrich_config = function(config, on_config)
        -- For fix the debuger path
				if not config["extensionPath"] then
					local c = vim.deepcopy(config)
					c.extensionPath = vim.fn.stdpath("data") .. "/lazy/local-lua-debugger-vscode/"
					on_config(c)
				end
			end,
		}
		dap.configurations.lua = {
			{
				name = "Current file (local-lua-dbg, lua)",
				type = "local-lua",
				request = "launch",
				cwd = "${workspaceFolder}",
				program = {
					lua = "lua",
					file = "${file}",
				},
				args = {},
			},
		}

    vim.keymap.set("n", "<F5>", function() dap.continue() end, { desc = "Start Debugging" })
    vim.keymap.set("n", "<F10>", function() dap.step_over() end, { desc = "Step Over" })
    vim.keymap.set("n", "<F11>", function() dap.step_into() end, { desc = "Step Into" })
    vim.keymap.set("n", "<F12>", function() dap.step_out() end, { desc = "Step Out" })
    vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })

    require("dapui").setup()
    vim.keymap.set("n", "<Leader>du", function() require("dapui").toggle() end, { desc = "Toggle DAP UI" })
	end,
}
