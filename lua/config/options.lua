-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- UI
vim.opt.number = true
vim.opt.cursorline = true

-- White space visibility
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Searching
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- Line wrapping
vim.o.wrap = true
vim.o.linebreak = true

-- Disable default status line
-- vim.o.cmdheight = 0

vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.termguicolors = true

vim.opt.relativenumber = true
