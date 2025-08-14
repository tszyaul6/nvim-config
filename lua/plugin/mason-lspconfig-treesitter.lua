return {
    { "mason-org/mason.nvim",   opts = {} },
    { "mfussenegger/nvim-jdtls" },
    { "neovim/nvim-lspconfig" },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            automatic_enable = {
                exclude = {
                    "jdtls"
                }
            }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
                ensure_installed = { "lua", "typescript", "javascript", "java" },
            })
        end
    },
}
