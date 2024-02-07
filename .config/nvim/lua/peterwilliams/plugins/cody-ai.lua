-- Use your favorite package manager to install, for example in lazy.nvim
--  Optionally, you can also install nvim-telescope/telescope.nvim to use some search functionality.
return {
	"sourcegraph/sg.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },

	config = function()
		local sourcegraph = require("sg")
		local lsp_attach = function(client, bufnr) end
		sourcegraph.setup({
			on_attach = lsp_attach,
			enable_cody = true,
		})
	end,
	cmd = {
		"CodyDo",
		"CodyTask",
		"CodyAsk",
		"CodyChat",
		"CodyToggle",
		"SourcegraphSearch",
		"SourcegraphLink",
	},
	event = "VeryLazy",
}
