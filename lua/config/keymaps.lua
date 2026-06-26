local map = vim.keymap.set

map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous tab" })

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

map("n", "<leader>do", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, desc = "Display code diagnostic" })

map("n", "<space>ca", function()
    vim.lsp.buf.code_action({ apply = true })
end, bufopts)
