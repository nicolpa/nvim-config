vim.lsp.config("rust-analyzer", {
    cmd = { "clippy" },
})
vim.lsp.enable("rust-analyzer")
