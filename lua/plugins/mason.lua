return {
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
    { "mason-org/mason.nvim",   opts = {} },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                "vim"
                            }
                        }
                    }
                }
            })
        end
    },
    { "mfussenegger/nvim-jdtls" }
}
