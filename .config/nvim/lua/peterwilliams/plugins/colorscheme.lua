-- return {
-- 	{
-- 		"bluz71/vim-nightfly-guicolors",
-- 		priority = 1000, -- make sure to load this before all the other start plugins
-- 		config = function()
-- 			-- load the colorscheme here
-- 			vim.cmd("colorscheme nightfly")
-- 		end,
-- 	},
-- }

-- return {
-- 	{
-- 		"craftzdog/solarized-osaka.nvim",
-- 		priority = 1000,
--
-- 		config = function() end,
-- 	},
-- }
-- vim.cmd([[colorscheme solarized-osaka]])
return {
	"folke/tokyonight.nvim",
	-- make sure to load this before other plugins.
	priority = 1000,
	cond = function()
		return vim.env.BACKGROUND ~= "light"
	end,
	config = function()
		require("tokyonight").setup({

			styles = { comments = "None" },
			sidebars = { "qf" },
			on_highlights = function(hl, c)
				hl["@punctuation.special.rst"] = { fg = c.orange, style = "bold" }

				hl.FzfLuaNormal = { fg = c.fg_dark, bg = c.bg_dark }
				hl.FzfLuaBorder = { fg = c.bg_search, bg = c.bg_dark }
				hl.FzfLuaCurrentLine = { fg = c.fg_dark, bg = c.bg_search }
			end,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
