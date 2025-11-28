return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = "iceberg_dark",
				globalstatus = true,
			},
			sections = {
				lualine_a = {
					{
						"mode",
					},
				},
				-- lualine_b = { "branch", "diff", "diagnostics" },
				lualine_b = { "diff" },
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
