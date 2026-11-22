return {
    "stevearc/conform.nvim",

    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "[F]ormat buffer",
        },
    },
    opts = {
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
    },
}
