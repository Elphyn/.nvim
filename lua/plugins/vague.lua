return {
	"vague-theme/vague.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("vague").setup({
			colors = {
				bg = "#1e1e2e",
			},
		})
		vim.cmd("colorscheme vague")
	end,
}
