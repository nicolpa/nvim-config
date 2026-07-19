vim.pack.add({
    {
        src = "https://github.com/neovim/nvim-lspconfig",
    },
    {
        src = "https://github.com/mason-org/mason.nvim",
    },
    {
        src = "https://github.com/mason-org/mason-lspconfig.nvim",
    },
    {
        src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
    },
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
    ensure_installed = {
        "cmakelint",
        "stylua",
        "gersemi",
    },
})

require("mason-lspconfig").setup({
    automatic_enable = true,
})

require("mason-tool-installer").setup({
    ensure_installed = {

        "lua_ls",
        "neocmake",
        "cmakelint",
        "gersemi",
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("LspAttachNotify", { clear = true }),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client then
            vim.notify(string.format("%s is now active", client.name), "info", { title = "LSP", icon = " " })
        end
    end,
})

vim.lsp.handlers["$/progress"] = function(_, result, ctx)
    local client = vim.lsp.get_client_by_id(ctx.client_id)
    local title = result.title or "Progress"
    local message = result.message or ""
    local percentage = result.percentage or 0

    if result.kind == "begin" then
        vim.notify(string.format("%s: %s", title, message), "info", { title = client.name, icon = " " })
    elseif result.kind == "report" then
        vim.notify(
            string.format("%s: %d%%", title, percentage),
            "info",
            { title = client.name, icon = " ", replace = true }
        )
    elseif result.kind == "end" then
        vim.notify(string.format("%s: Complete", title), "info", { title = client.name, icon = " ", replace = true })
    end
end

vim.keymap.set("n", "ga", function()
    vim.lsp.buf.code_action({ apply = true })
end, { noremap = true, desc = "Display code actions" })
