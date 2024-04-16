local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = 'zjj.plugins' }, { import = 'zjj.plugins.lsp' } }, {
  checker = {   -- check for updating
    enable = true,
    notify = false,
  },
  change_detection = {
    notify = false, -- disable the notification from detected updating
                    -- plugin configuration
  }
})
