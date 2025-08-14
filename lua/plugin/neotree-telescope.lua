return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        opts = {
            window = {
                position = "right"
            }
        },
        config = function(_, opts)
            require("neo-tree").setup(opts)
            local keymap_opts = { noremap = true, silent = true }
            vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", keymap_opts)
            vim.keymap.set("n", "<leader>o", "<Cmd>Neotree reveal<CR>", keymap_opts)
        end
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require('telescope.builtin')

            local find_files_truncate = function()
                builtin.find_files({ path_display = { "truncate" } })
            end

            vim.keymap.set('n', '<leader>ff', find_files_truncate, { desc = 'Telescope find files', })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end
    }
}
