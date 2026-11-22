-- LSP Plugins

return {
    -- Mason: installs and manages external tools like LSP servers
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    -- Mason-LSPConfig: tells Mason which servers to install and links them to lspconfig
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "lua_ls", -- Lua (great for editing Neovim config)
                "neocmake", -- cmake
                "rust_analyzer", -- Rust
                "clangd", -- C / C++
            },
        },
    },

    -- nvim-lspconfig: connects Neovim to installed LSP servers
    {
        "neovim/nvim-lspconfig",
    },
}
