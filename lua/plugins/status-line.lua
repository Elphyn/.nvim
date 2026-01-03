return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = "auto",
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
					},
				},
				-- lualine_b = { "branch", "diff", "diagnostics" },
				lualine_b = { "diff", "branch" },
				lualine_c = {
					{
						"filename",
					},
				},
				lualine_x = { "fileformat", "filetype" },
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
