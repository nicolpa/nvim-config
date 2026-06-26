vim.pack.add({
    {
        src = "https://github.com/saghen/blink.lib",
    },
    {
        src = "https://github.com/saghen/blink.cmp",
    }
})

local cmp = require("blink.cmp")
cmp.build():wait(60000)
cmp.setup({
    keymap = {
        preset = "default",

        -- Single command
        ["<C-n>"] = { "select_next" },

        -- Chained commands
        ["<C-p>"] = { "select_prev", "fallback" },

        -- Multi-key sequences
        ["<C-x><C-o>"] = { "show", "fallback" },
        ["jk"] = { "hide" },

        -- Key equivalences (for terminals that support them)
        ["<C-i>"] = { "accept", "snippet_forward", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },

        -- Override preset key
        -- ["<Enter>"] = { "select_and_accept" },

        -- Disable preset key
        ["<C-e>"] = false, -- or {}

        ["<C-Space>"] = { "show" }, -- This is equivalent as above

        -- Actions with parameters require functions
        ["<C-space>S"] = {
            function(cmp)
                return cmp.show({ providers = { "snippets" } })
            end,
        },
        -- Here, <C-n> triggers 'select_next' command defined above
        ["<C-j>"] = {
            function(cmp)
                return "<C-n>"
            end,
        },
    },
})
