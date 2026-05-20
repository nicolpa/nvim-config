vim.pack.add({
    {
        src = "https://github.com/stevearc/oil.nvim.git",
    },
})

require("oil").setup({
    keymaps = {
        ["gm"] = { "actions.cd", mode = "n" },
    },
    columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
    },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>ws", "<C-W>s<CMD>Oil<CR>", { desc = "Open explorer in new horizontal window" })
vim.keymap.set("n", "<leader>wv", "<C-W>v<CMD>Oil<CR>", { desc = "Open exploror in new vertical window" })
