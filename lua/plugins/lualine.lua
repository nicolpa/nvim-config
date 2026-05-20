vim.pack.add({
    {
        src = "https://github.com/nvim-lualine/lualine.nvim",
    },
})

require("lualine").setup({

    options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diagnostics" },
        lualine_c = { filename },
        lualine_x = {
            function()
                local reg = vim.fn.reg_recording()
                if reg ~= "" then
                    return "Recording @" .. reg
                end
                return ""
            end,
        },
        lualine_y = { "searchcount", "filetype", "progress" },
        lualine_z = {
            { "location" },
        },
    },
    inactive_sections = {
        lualine_a = { filename },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    extensions = {},
})
