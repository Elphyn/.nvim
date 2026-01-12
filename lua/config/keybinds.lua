local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
map("n", "<leader>Q", ":qa!<CR>", opts)
map("n", "<leader>lf", vim.lsp.buf.format)
map("n", "tw", ":bd<CR>", opts)

-- moving + centering
map("n", "{", "{zz")
map("n", "}", "}zz")

-- quickfix list

map("n", "<F1>", ":cnext<CR>", opts)
map("n", "<F2>", ":cprev<CR>", opts)
map("n", "<leader>co", ":copen<CR>", opts)
map("n", "<leader>cq", ":cclose<CR>", opts)

vim.api.nvim_create_autocmd("FileType", {
	pattern = "qf",
	callback = function()
		map("n", "q", ":cclose<CR>", { buffer = true, silent = true })
	end,
})

-- snippets
map("i", "<C-l>", "l<C-j>")

-- splits
map("n", "sv", ":vsplit<CR>", opts)
map("n", "sh", ":split<CR>", opts)
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- splits resize
map("n", "<A-h>", ":vertical resize -2<CR>")
map("n", "<A-l>", ":vertical resize +2<CR>")

-- tabs
map("n", "tq", ":tabclose<CR>", opts)

-- map("n", "<A-j>", ":resize -2<CR>")
-- map("n", "<A-k>", ":resize +2<CR>")

-- oil keymaps

map("n", "<leader>e", function()
	local b_type = vim.bo.filetype
	if b_type == "oil" then
		vim.cmd("bd")
		return
	end
	vim.cmd("Oil")
end)

vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil, diffview, snacks_terminal",
	callback = function()
		map("n", "q", ":q<CR>", { buffer = true, silent = true })
	end,
})

-- Git
map("n", "]h", ":Gitsigns next_hunk<CR>", opts)
map("n", "[h", ":Gitsigns prev_hunk<CR>", opts)

--  LSP
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename symbol" })
