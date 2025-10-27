return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
			},
		})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.lua",
			callback = function()
				require("conform").format({ async = false })
			end,
		})
	end,
}
