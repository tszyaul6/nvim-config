-- sync all escape method for plugins
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "neo-tree", "qf", "help", "lspinfo" },
  callback = function(args)
    local opts = { buffer = args.buf, silent = true }
    vim.keymap.set("n", "q", "<cmd>close<cr>", opts)
    vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", opts)
  end,
})

-- Special handling for Telescope
vim.api.nvim_create_autocmd("FileType", {
  pattern = "TelescopePrompt",
  callback = function(args)
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")
    local opts = { buffer = args.buf, silent = true }

    -- Esc in insert mode closes telescope
    vim.keymap.set("i", "<Esc>", function()
      local picker = action_state.get_current_picker(args.buf)
      actions.close(picker.prompt_bufnr)
    end, opts)

    -- q in normal mode closes telescope
    vim.keymap.set("n", "q", function()
      local picker = action_state.get_current_picker(args.buf)
      actions.close(picker.prompt_bufnr)
    end, opts)
  end,
})
