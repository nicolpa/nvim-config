local map = vim.keymap.set

map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", {desc = "Nex tab"})


vim.keymap.set("n", "<leader>lg", function()
    --  get file name with extension
    local file = vim.fn.expand("%:t")
    vim.cmd("!LazyGit")

    -- Wait a bit for LazyGit to load
    vim.defer_fn(function()
        -- search for the file, highlight, and exit search mode in lazygit
        vim.api.nvim_feedkeys("/" .. file, "t", true)
        vim.api.nvim_input("<CR>")
        vim.api.nvim_input("<ESC>")
    end, 150) -- (milliseconds)
end, { desc = "[g]it" })
