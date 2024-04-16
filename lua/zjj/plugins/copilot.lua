return {
	"github/copilot.vim",
	config = function()
		local keymap = vim.keymap

		-- keymap.set("i", "<M-a>", "copilot#Accept('\\<CR>')", { desc = "Accept copilot suggestion" })
		keymap.set("i", "<M-w>", "<Plug>(copilot-accept-word)", { desc = "Accept next word" })
		keymap.set("i", "<M-l>", "<Plug>(copilot-accept-line)", { desc = "Accept next line" })
	end,
}
