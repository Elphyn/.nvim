return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				preview = { treesitter = false },
				color_devicons = true,
				sorting_strategy = "ascending",
				borderchars = {
					"─", -- top
					"│", -- right
					"─", -- bottom
					"│", -- left
					"┌", -- top-left
					"┐", -- top-right
					"┘", -- bottom-right
					"└", -- bottom-left
				},
				path_displays = { "smart" },
				layout_config = {
					height = 100,
					width = 400,
					prompt_position = "top",
					preview_cutoff = 40,
				},
			},
		})
	end,
}
