return {
	"mfussenegger/nvim-dap",
	-- event = "VeryLazy",
	dependencies = {
		-- "rcarriga/nvim-dap-ui",
		"folke/neodev.nvim",
		-- "nvim-neotest/nvim-nio",
	},
	config = function()
		-- local dap, dapui = require("dap"), require("dapui")
		local dap = require("dap")
		-- dapui.setup()
		-- require("neodev").setup({
		-- 	library = { plugins = { "nvim-dap-ui" }, types = true },
		-- })
		-- key binding
		local keymap = vim.keymap

		keymap.set("n", "<leader>db", function()
			dap.toggle_breakpoint()
		end, { desc = "Toggle breakpoint" })
		keymap.set("n", "<leader>dc", function()
			dap.continue()
		end, { desc = "Continue" })
		keymap.set("n", "<leader>ds", function()
			dap.step_over()
		end, { desc = "Step over" })
		keymap.set("n", "<leader>di", function()
			dap.step_into()
		end, { desc = "Step into" })

		-- dap.listeners.before.attach.dapui_config = function()
		-- 	dapui.open()
		-- end
		-- dap.listeners.before.launch.dapui_config = function()
		-- 	dapui.open()
		-- end
		-- -- dap.listeners.before.event_terminated.dapui_config = function()
		-- -- 	dapui.close()
		-- -- end
		-- dap.listeners.before.event_exited.dapui_config = function()
		-- 	dapui.close()
		-- end
	end,
}
