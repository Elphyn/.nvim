vim.o.splitbelow = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.undofile = true
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.o.wrap = false
vim.o.linebreak = false
vim.o.scrolloff = 8
vim.o.relativenumber = true
vim.o.laststatus = 2
vim.o.cmdheight = 1
vim.o.mouse = ""
vim.opt.fillchars = {
	diff = "╱",
}
vim.opt.diffopt = {
	"internal",
	"filler",
	"closeoff",
	"context:12",
	"algorithm:histogram",
	"linematch:200",
	"indent-heuristic",
}
