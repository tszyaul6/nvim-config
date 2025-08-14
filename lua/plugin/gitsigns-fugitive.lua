return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
            vim.keymap.set("n", "gph", ":Gitsigns prev_hunk<CR>")
            vim.keymap.set("n", "gnh", ":Gitsigns next_hunk<CR>")
        end
    },
    {
        "tpope/vim-fugitive"
    }
}
