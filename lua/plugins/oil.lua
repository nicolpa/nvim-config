vim.pack.add({
    {
        src = "https://github.com/stevearc/oil.nvim.git",
    },
})

require("oil").setup({
    keymaps = {
        ["gm"] = { "actions.cd", mode = "n" },
    },
    watch_for_changes = true,
    columns = { "icon" },
})

local map = vim.keymap.set

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "<C-h>", "<C-W>s<CMD>Oil<CR>", { desc = "Open explorer in new horizontal window" })
map("n", "<C-s>", "<C-W>v<CMD>Oil<CR>", { desc = "Open exploror in new vertical window" })
