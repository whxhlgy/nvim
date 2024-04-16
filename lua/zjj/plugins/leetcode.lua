return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- telescope 所需
		"MunifTanjim/nui.nvim",

		-- 可选
		"nvim-treesitter/nvim-treesitter",
		"rcarriga/nvim-notify",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		injector = {
			-- ["python3"] = {
			-- 	before = true,
			-- },
			-- ["cpp"] = {
			-- 	before = { "#include <bits/stdc++.h>", "using namespace std;" },
			-- 	after = "int main() {}",
			-- },
			["java"] = {
				before = "import java.util.*;",
			},
		},
		-- 配置放在这里
		cn = {
			enabled = true,
		},
		lang = "java",
	},
}
