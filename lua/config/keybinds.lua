local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
map("n", "<leader>Q", ":qa!<CR>", opts)
map("n", "<leader>lf", vim.lsp.buf.format)
map("n", "tw", ":bd<CR>", opts)
--  hover info
map("n", "K", vim.lsp.buf.hover, opts)

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

-- tabs
map("n", "sv", ":vsplit<CR>", opts)
map("n", "sh", ":split<CR>", opts)
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
-- tabs resize
map("n", "<A-h>", ":vertical resize -2<CR>")
map("n", "<A-l>", ":vertical resize +2<CR>")

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
	pattern = "oil",
	callback = function()
		map("n", "q", ":q<CR>", { buffer = true, silent = true })
	end,
})

-- TODO: There's some kind of annoying delay here, need to debug
-- map("n", "<leader>c", function()
-- 	local b_type = vim.bo.filetype
-- 	if b_type == "oil" then
-- 		vim.cmd("bd")
-- 		return
-- 	end
-- 	vim.cmd("Oil ~/.config/nvim")
-- end)
-- Git
map("n", "]h", ":Gitsigns next_hunk<CR>", opts)
map("n", "[h", ":Gitsigns prev_hunk<CR>", opts)
