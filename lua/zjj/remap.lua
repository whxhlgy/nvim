vim.g.mapleader = " "
vim.keymap.set("n", "<leader>mv", vim.cmd.Ex)
vim.keymap.set("n", "g]", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "g[", function() vim.diagnostic.goto_prev() end)

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>fm", ':Format<CR>')
vim.keymap.set("n", "<F5>", ':UndotreeToggle<CR>')

-- buffferline remap
vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")

vim.keymap.set("n", "gb", ":BufferLinePick<CR>")
