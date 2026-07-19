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
map("v", "<M-down>", ":m '>+2<CR>gv=gv", { desc = "Move line down" })

map("n", "<C-C>", ":%y+<CR>", { noremap = true, desc = "Copy all lines" })
map("n", "<C-D>", "ggVG", { noremap = true, desc = "Select all lines" })
-- vim.keymap.set("n", "<C-S>a", function()
--   vim.notify("pressed")
-- end)
-- Indent
map("n", "<M-l>", ">>", { noremap = true, desc = "Select all lines" })
map("n", "<M-h>", "<<", { noremap = true, desc = "Select all lines" })
map("v", "<M-l>", ">>", { noremap = true, desc = "Select all lines" })
map("v", "<M-h>", "<<", { noremap = true, desc = "Select all lines" })

map("n", "<leader>do", ":lua vim.diagnostic.open_float()<CR>", { noremap = true, desc = "Display code diagnostic" })


-- vim.keymap.set("i", "<CR>", function()
--     local info = vim.fn.complete_info({ "selected" })
--
--     if vim.fn.pumvisible() == 1 and info.selected ~= -1 then
--         return "<C-y>"
--     end
--
--     return "<CR>"
-- end, { expr = true })
