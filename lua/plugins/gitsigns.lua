return {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
        current_line_blame = true,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
            delay = 700,
            ignore_whitespace = false,
            virt_text_priority = 100,
            use_focus = true,
        },
        on_attach = function(bufnr)
            local gitsigns = require("gitsigns")

            local function map(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            -- Navigation
            map("n", "]c", function()
                if vim.wo.diff then
                    vim.cmd.normal({ "]c", bang = true })
                else
                    gitsigns.nav_hunk("next")
                end
            end)

            map("n", "[c", function()
                if vim.wo.diff then
                    vim.cmd.normal({ "[c", bang = true })
                else
                    gitsigns.nav_hunk("prev")
                end
            end)

            -- Actions
            map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "git [s]tage hunk" })
            map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "git [r]eset hunk" })

            map("v", "<leader>gs", function()
                gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "git [s]tage hunk" })

            map("v", "<leader>gr", function()
                gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
            end, { desc = "git [r]eset hunk" })

            map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "git [S]tage buffer" })
            map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "git [R]eset buffer" })
            map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "git [p]review hunk" })
            map("n", "<leader>gi", gitsigns.preview_hunk_inline, { desc = "git preview hunk [i]nline" })

            map("n", "<leader>gb", function()
                gitsigns.blame_line({ full = true })
            end, { desc = "git [b]lame line" })

            map("n", "<leader>gd", gitsigns.diffthis, { desc = "git [d]iff against index" })

            map("n", "<leader>gD", function()
                gitsigns.diffthis("~")
            end, { desc = "git [d]iff against last commit" })

            map("n", "<leader>gQ", function()
                gitsigns.setqflist("all")
            end, { desc = "List all changes" })
            map("n", "<leader>gq", gitsigns.setqflist, { desc = "List buffer changes" })

            -- Toggles
            map("n", "<leader>tb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle git show [b]lame line" })
            map("n", "<leader>tw", gitsigns.toggle_word_diff, { desc = "[T]oggle git show [D]eleted" })
        end,
    },
}
