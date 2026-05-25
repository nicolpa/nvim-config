vim.pack.add({
    {
        src = "https://github.com/nvim-lualine/lualine.nvim",
    },
})

require("lualine").setup({
    options = {
        component_separators = "",
        section_separators = { left = "", right = "" },
    },
    extensions = { "oil" },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "diagnostics" },
        lualine_d = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
    },
    inactive_sections = {
        lualine_a = {
            {
                "filename",
                symbols = {
                    modified = "●", -- Text to show when the file is modified.
                },
            },
        },
        lualine_b = {},
        lualine_c = { "diagnostics" },
        lualine_x = {},
        -- lualine_y = { "filetype" },
        lualine_z = { "location" },
    },
    tabline = {
        lualine_a = {
            {
                "tabs",
                mode = 1,

                fmt = function(name, context)
                    local buflist = vim.fn.tabpagebuflist(context.tabnr)
                    local winnr = vim.fn.tabpagewinnr(context.tabnr)
                    local bufnr = buflist[winnr]

                    if vim.bo[bufnr].filetype ~= "oil" then
                        return name
                    end

                    local dir = vim.api.nvim_buf_get_name(bufnr)

                    dir = dir:gsub("^oil://", "")
                    dir = dir:gsub("/$", "")

                    return "󰉋 " .. vim.fn.fnamemodify(dir, ":~")
                end,

                symbols = {
                    modified = " ●",
                },
            },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
})
