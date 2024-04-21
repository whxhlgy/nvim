return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")
		-- local function restore_nvim_tree()
		-- 	local nvim_tree = require("nvim-tree")
		-- 	local api = require("nvim-tree.api")
		-- 	nvim_tree.change_dir(vim.fn.getcwd())
		-- 	api.tree.open()
		-- 	api.tree.reload()
		-- end

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
			-- post_restore_cmds = {
			-- 	restore_nvim_tree,
			-- },
			pre_save_cmds = {
				function()
					vim.cmd("NvimTreeClose")
				end,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
	end,
}
