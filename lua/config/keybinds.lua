local map = vim.keymap.set

map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Nex tab" })

map("n", "<M-j>", ":m -2<CR>", { desc = "Move line up" })
map("n", "<M-k>", ":m +1<CR>", { desc = "Move line down" })
map("n", "<M-up>", ":m -2<CR>", { desc = "Move line up" })
map("n", "<M-down>", ":m +1<CR>", { desc = "Move line down" })

map("v", "<M-j>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
map("v", "<M-k>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "<M-up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
map("v", "<M-down>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })

map("n", "<C-C>", ":%y+<CR>", { noremap = true, desc = "Copy all lines" })
map("n", "<C-A>", "ggVG", { noremap = true, desc = "Select all lines" })
