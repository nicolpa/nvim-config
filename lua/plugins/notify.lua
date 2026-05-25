vim.pack.add({
    {
        src = "https://github.com/rcarriga/nvim-notify",
    },
})

vim.notify = require("notify")

require("notify").setup({
    timeout = 1500,
})

-- vim.notify(timeou)
