vim.pack.add({
    {
        src = "https://github.com/stevearc/conform.nvim",
    },
})

local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },
        cpp = { "clang-format" },
        rust = { "rustfmt" },
        toml = { "tombi" },
        sh = { "shellcheck" },
        xml = { "xmllint" },
        cmake = { "gersemi" },
        json = { "biome" },
        nix = { "nixfmt" },
    },
})

vim.keymap.set("n", "<leader>f", function()
    conform.format({
        async = true,
        lsp_fallback = true,
    })
end, { desc = "[f]ormat buffer" })
