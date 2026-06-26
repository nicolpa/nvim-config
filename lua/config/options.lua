vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.mouse = "a"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- UI
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.winborder = "rounded"
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 10 -- Keep 10 lines above/below cursor

-- Search
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- Line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- Performance
vim.opt.synmaxcol = 300 -- Syntax highlighting limit
vim.opt.updatetime = 300 -- Faster completion
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000

-- Disable default status line
-- vim.o.cmdheight = 0

-- vim.o.autocomplete = true
