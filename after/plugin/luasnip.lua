require("luasnip.loaders.from_vscode").load({paths = "~/.config/nvim/my_snippets"})

-- keymap
-- edit snip
vim.keymap.set("n", "<leader>es", function ()
  require("luasnip.loaders").edit_snippet_files{
    format = function(file, source_name)
      -- if snippets is not defined by me, show the path, else show '$MYSNIP'
      if string.find(file, "/Users/zhongjunjie/.local/share/nvim/site/pack/packer/start/") then
        return nil
      else return file:gsub("/Users/zhongjunjie/.config/nvim/my_snippets/snippets", "$MYSNIP")
      end
    end,
    extend = function(ft, paths)
      if #paths == 0 then
        return {
          { "~/.config/nvim/my_snippets/snippets" .. ft .. ".json",
            string.format("%s/%s.json", "~/.config/nvim/my_snippets/snippets", ft) }
        }
      end
      return {}
    end
  }
end)

-- edit a new snip
vim.keymap.set("n", "<leader>eas", function ()
  require("luasnip.loaders").edit_snippet_files{
  }
end)
