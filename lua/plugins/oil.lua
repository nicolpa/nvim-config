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
