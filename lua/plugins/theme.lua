-- return {
-- 	"vague-theme/vague.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("vague").setup({
-- 			colors = {
-- 				bg = "#181818",
-- 			},
-- 		})
-- 		vim.cmd("colorscheme vague")
-- 	end,
-- }
--
return {
	"nyoom-engineering/oxocarbon.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.opt.background = "dark"
		vim.cmd("colorscheme oxocarbon")
	end,
}
