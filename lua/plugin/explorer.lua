return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    config = function()
        local keymap_opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", keymap_opts)
        vim.keymap.set("n", "<leader>o", "<Cmd>Neotree reveal<CR>", keymap_opts)
    end
  }
}
