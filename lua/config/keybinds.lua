local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>lf", vim.lsp.buf.format)
map("n", "tw", ":bd<CR>", opts)

-- moving + centering
map("n", "{", "{zz")
map("n", "}", "}zz")

-- snippets
map("i", "<C-l>", "l<C-j>")

-- tabs
map("n", "sv", ":vsplit<CR>", opts)
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- oil keymaps

map("n", "<leader>e", function()
	local b_type = vim.bo.filetype
	if b_type == "oil" then
		vim.cmd("bd")
		return
	end
	vim.cmd("Oil")
end)

map("n", "<leader>c", function()
	local b_type = vim.bo.filetype
	if b_type == "oil" then
		vim.cmd("bd")
		return
	end
	vim.cmd("Oil ~/.config/nvim-dev")
end)
