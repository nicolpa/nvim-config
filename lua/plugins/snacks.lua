vim.pack.add({
    "https://github.com/folke/snacks.nvim",
})

local snacks = require("snacks")

snacks.setup({
    animate = { enabled = true },
    bigfile = { enabled = false },
    dim = { enabled = true },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = false },
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
    { "<c-Enter>", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    { "<leader>gg", function() Snacks.lazygit() end, desc = "LazyGit" },
    { "<leader>sf", function() Snacks.picker.files() end, desc = "[S]earch [F]iles" },
    { "<leader>sg", function() Snacks.picker.grep() end, desc = "[S]earch by [G]rep" },
    { "<leader><leader>", function() Snacks.picker.buffers() end, desc = "List opened buffers" },
    { "<leader>sd", function() Snacks.picker.diagnostics_buffer() end, desc = "[S]earch buffers diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics() end, desc = "[S]earch buffer diagnostics" },
    { "<leader>sr", function() Snacks.picker.resume() end, desc = "[S]earch resume" },
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
