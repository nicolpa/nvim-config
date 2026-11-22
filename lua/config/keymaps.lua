local map = vim.keymap.set

map("n", "<leader>tn", ":tabnew<cr>", { desc = "New tab" })
map("n", "<leader>tx", ":tabclose<cr>", { desc = "Close tab" })
map("n", "]t", ":tabnext<cr>", { desc = "Next tab" })
map("n", "[t", ":tabprevious<cr>", { desc = "Previous tab" })

map("n", "<M-j>", ":m -2<CR>", { desc = "Move line up" })
map("n", "<M-k>", ":m +1<CR>", { desc = "Move line down" })
map("n", "<M-up>", ":m -2<CR>", { desc = "Move line up" })
map("n", "<M-down>", ":m +1<CR>", { desc = "Move line down" })

map("v", "<M-j>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
map("v", "<M-k>", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "<M-up>", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
map("v", "<M-down>", ":m '>+2<CR>gv=gv", { desc = "Move line down" })

map("n", "<C-C>", ":%y+<CR>", { noremap = true, desc = "Copy all lines" })
map("n", "<C-D>", "ggVG", { noremap = true, desc = "Select all lines" })

-- Indent
map("n", "<M-l>", ">>", { noremap = true, desc = "Select all lines" })
map("n", "<M-h>", "<<", { noremap = true, desc = "Select all lines" })
map("v", "<M-l>", ">gv", { noremap = true, desc = "Select all lines" })
map("v", "<M-h>", "<gv", { noremap = true, desc = "Select all lines" })

map("n", "<leader>do", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, desc = "Display code diagnostic" })
