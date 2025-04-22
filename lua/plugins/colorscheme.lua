return {
	{
		"navarasu/onedark.nvim",
		-- config = function()
		-- 	require("onedark").setup{
		-- 		style = 'dark'
		-- 	}
		-- 	vim.cmd([[colorscheme onedark]])
		-- end
	},
	{
		"rebelot/kanagawa.nvim",
		-- config = function()
		-- 	vim.cmd([[colorscheme kanagawa]])
		-- end
	},
	{
		"catppuccin/nvim",
		priority = 1000,
		name = "catppuccin",
		config = function()
			vim.cmd([[colorscheme catppuccin]])
		end
	}
}
