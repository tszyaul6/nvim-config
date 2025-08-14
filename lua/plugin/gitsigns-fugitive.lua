return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            sign_priority = 100
        },
        config = function(_, opts)
            require("gitsigns").setup(opts)
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
            vim.keymap.set("n", "gph", ":Gitsigns prev_hunk<CR>")
            vim.keymap.set("n", "gnh", ":Gitsigns next_hunk<CR>")
        end
    },
    {
        "tpope/vim-fugitive"
    }
}
