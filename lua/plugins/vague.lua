return {
	"vague-theme/vague.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("vague").setup({
			colors = {},
		})
		vim.cmd("colorscheme vague")
	end,
}
