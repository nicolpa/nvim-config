return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        animate = { enabled = true },
        bigfile = { enabled = false },
        dim = { enabled = true },
        dashboard = { enabled = false },
        explorer = { enabled = true },
        indent = { enabled = false },
        input = { enabled = true },
        picker = {
            enabled = false,

            sources = {
                buffers = {
                    layout = {
                        preview = true,
                        backdrop = false,
                        relative = "win",
                    },
                },
            },
        },
        notifier = { enabled = true },
        quickfile = { enabled = false },
        scope = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
        words = { enabled = false },
        lazygit = {
            configure = false,
        },
    },
    keys = {
        {
            "<c-Enter>",
            function()
                Snacks.terminal()
            end,
            desc = "Toggle Terminal",
        },
        {
            "<leader>gg",
            function()
                Snacks.lazygit()
            end,
            desc = "LazyGit",
        },
        {
            "<leader>sf",
            function()
                Snacks.picker.files()
            end,
            desc = "[S]earch [F]iles",
        },
        {
            "<leader>sg",
            function()
                Snacks.picker.grep()
            end,
            desc = "[S]earch by [G]rep",
        },
        {
            "<leader><leader>",
            function()
                Snacks.picker.buffers()
            end,
            desc = "List opened buffers",
        },
        {
            "<leader>sd",
            function()
                Snacks.picker.diagnostics_buffer()
            end,
            desc = "[S]earch buffers diagnostics",
        },
        {
            "<leader>sD",
            function()
                Snacks.picker.diagnostics()
            end,
            desc = "[S]earch buffer diagnostics",
        },
        {
            "<leader>sr",
            function()
                Snacks.picker.resume()
            end,
            desc = "[S]earch resume",
        },
    },
}
