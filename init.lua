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
end

require("zjj.core")
require("zjj.lazy")
