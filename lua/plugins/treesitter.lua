vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
})

require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
})

require("nvim-treesitter").install({
    "c",
    "cpp",
    "lua",
    "cmake",
    "make",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", "lua", "bash", "cmake", "make" },

    callback = function()
        vim.treesitter.start()
    end,
})
