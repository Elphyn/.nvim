return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	lazy = false,
	config = function()
		require("oil").setup({
			keymaps = {
				["l"] = "actions.select",
				["h"] = { "actions.parent", mode = "n" },
			},
			columns = {
				"permissions",
				"icon",
			},
		})
	end,
}
