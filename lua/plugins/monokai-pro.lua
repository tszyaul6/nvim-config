return {
    "loctvl842/monokai-pro.nvim",
    opts = {
        filter = "spectrum"
    },
    config = function(_, opts)
        require("monokai-pro").setup(opts)
        vim.cmd([[colorscheme monokai-pro]])
    end
}
