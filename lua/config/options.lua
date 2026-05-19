-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- Disable intro
-- vim.opt.shortmess:append("I")
