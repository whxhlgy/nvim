return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure this plugin is load before any else
		config = function()
			-- load the scheme plugin
			-- vim.cmd([[colorscheme tokyonight]])
			-- require("tokyonight").setup({
			-- 	style = "night",
			-- })
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				styles = {
					comments = { "italic" },
					conditions = { "italic" },
					functions = { "italic" },
					keywords = { "italic" },
					strings = {},
				},
				integrations = {
					alpha = true,
					indent_blankline = {
						enabled = true,
						scope_color = "", -- catppuccin color (eg. `lavender`) Default: text
						colored_indent_levels = false,
					},
					mason = true,
					noice = true,
					cmp = true,
					-- gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					which_key = true,
					-- mini = {
					-- 	enabled = true,
					-- 	indentscope_color = "",
					-- },
				},
			})
			vim.cmd([[colorscheme catppuccin]])
		end,
	},
}
