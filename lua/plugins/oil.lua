vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {

        keymaps = {
            ["gm"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
        },
        watch_for_changes = true,
    },
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
