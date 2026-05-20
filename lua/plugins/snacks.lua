vim.pack.add({
    "https://github.com/folke/snacks.nvim",
})

local snacks = require("snacks")

snacks.setup({
    animate = { enabled = true },
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled = true },
    picker = { enabled = false },
    notifier = { enabled = true },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    lazygit = {
        configure = false,
    },
})


-- stylua: ignore start
local   keymaps = {
    -- Top Pickers & Explorer
    { '<c-Enter>', function() Snacks.terminal() end, desc = 'Toggle Terminal' },
    { '<leader>gg', function() Snacks.lazygit() end, desc = 'LazyGit' },
}
-- stylua: ignore end
for _, map in ipairs(keymaps) do
    local opts = { desc = map.desc }
    if map.silent ~= nil then
        opts.silent = map.silent
    end
    if map.noremap ~= nil then
        opts.noremap = map.noremap
    else
        opts.noremap = true
    end
    if map.expr ~= nil then
        opts.expr = map.expr
    end

    local mode = map.mode or "n"
    vim.keymap.set(mode, map[1], map[2], opts)
end
