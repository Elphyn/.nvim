local opts = { noremap = true, silent = true }
local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
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

-- telescope
local builtin = require("telescope.builtin")
map("n", "<leader><leader>", builtin.find_files)
map("n", "<leader>g", builtin.live_grep)
map("n", "<leader>sb", builtin.buffers)
map("n", "<leader>si", builtin.grep_string)
map("n", "<leader>so", builtin.oldfiles)
map("n", "<leader>sh", builtin.help_tags)
map("n", "<leader>sm", builtin.man_pages)
map("n", "<leader>sr", builtin.lsp_references)
map("n", "<leader>sd", builtin.diagnostics)
map("n", "<leader>si", builtin.lsp_implementations)
map("n", "<leader>sT", builtin.lsp_type_definitions)
map("n", "<leader>ss", builtin.current_buffer_fuzzy_find)
map("n", "<leader>st", builtin.builtin)
map("n", "<leader>sc", builtin.git_bcommits)
map("n", "<leader>sk", builtin.keymaps)
