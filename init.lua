-- settings:
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.termguicolors = true
vim.cmd([[
autocmd FileType javascript,html,css,lua
  \ set tabstop=2 | set softtabstop=2 | set shiftwidth=2
]])
vim.cmd([[language en_US]])

if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font Mono:h15"
	vim.g.neovide_window_blurred = true
	vim.g.neovide_input_macos_alt_is_meta = true
	vim.g.neovide_cursor_animate_command_line = true
	vim.api.nvim_create_autocmd("BufLeave", {
		callback = function()
			vim.g.neovide_scroll_animation_length = 0
			vim.g.neovide_cursor_animation_length = 0
		end,
	})
	vim.api.nvim_create_autocmd("BufEnter", {
		callback = function()
			vim.fn.timer_start(70, function()
				vim.g.neovide_scroll_animation_length = 0.3
				vim.g.neovide_cursor_animation_length = 0.08
			end)
		end,
	})
end

require("zjj.core")
require("zjj.lazy")
