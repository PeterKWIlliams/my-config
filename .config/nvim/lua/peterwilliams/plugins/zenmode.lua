-- Lua
return {
	"folke/zen-mode.nvim",
	opts = {

		window = {
			width = 0.5,
		},
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},

	config = function()
		require("zen-mode").setup()
		vim.keymap.set(
			"n",
			"<leader>z",
			":ZenMode<CR>",
			{ desc = "Enter zenmode to destroy your enemies and bring peace to the galaxy" }
		)
	end,
}
