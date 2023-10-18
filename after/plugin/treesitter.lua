require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the four listed parsers should always be installed)
  ensure_installed = { "javascript", "python", "c", "lua", "vim"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  -- autoclose and rename html tag:
  autotag = {
    enable = true,
    enable_close_on_slash = false,
  },

  -- enable indenting
  indent = {
    enable = true
  }
}
