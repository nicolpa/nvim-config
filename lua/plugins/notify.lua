vim.pack.add({
    {
        src = "https://github.com/rcarriga/nvim-notify",
    },
})

local notify = require("notify")

vim.notify = notify

notify.setup({
    timeout = 2004,
})

local map = vim.keymap.set
map("n", "<leader>sn", ":Notifications<CR>", { noremap = true, desc = "Show notification history" })

map("n", "<leader>sN", function()
    notify("Notification history cleared", "info", { render = "compact" })
    notify.clear_history()
end, { noremap = true, desc = "Clear notification history" })
