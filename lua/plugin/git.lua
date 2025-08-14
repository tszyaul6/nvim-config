return {
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            vim.keymap.set("n", "<leader>GP", ":Gitsigns preview_hunk<CR>")
        end
    },
    {
        "tpope/vim-fugitive"
    }
}
