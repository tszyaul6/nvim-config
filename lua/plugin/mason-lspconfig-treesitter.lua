return {
    { "mason-org/mason.nvim",   opts = {} },
    { "mfussenegger/nvim-jdtls" },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup(
                {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" }
                            },
                            workspace = {
                                library = vim.api.nvim_get_runtime_file("", true)
                            }
                        },
                    },
                }
            )
        end
    },
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
