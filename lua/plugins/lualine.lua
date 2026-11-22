return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    opts = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
            statusline = { "neo-tree" },
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
            refresh_time = 16, -- ~60fps
            events = {
                "WinEnter",
                "BufEnter",
                "BufWritePost",
                "SessionLoadPost",
                "FileChangedShellPost",
                "VimResized",
                "Filetype",
                "CursorMoved",
                "CursorMovedI",
                "ModeChanged",
            },
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = {},
            lualine_x = { "filetype" },
            lualine_y = { "progress" },
            lualine_z = { "location" },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
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
        winbar = {},
        inactive_winbar = {},
        extensions = {},
    },
}
