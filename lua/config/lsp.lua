vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
            vim.keymap.set('i', '<C-Space>', function()
                vim.lsp.completion.get()
            end)
        end

        local keymap_opt = { buffer = ev.buf, nowait = true, noremap = true, silent = true }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opt)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, keymap_opt)
        vim.keymap.set("n", "gu", vim.lsp.buf.references, keymap_opt)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, keymap_opt)
        vim.keymap.set("n", "gh", vim.diagnostic.open_float, keymap_opt)
        vim.keymap.set("n", "gpd", vim.diagnostic.goto_prev, keymap_opt)
        vim.keymap.set("n", "gnd", vim.diagnostic.goto_next, keymap_opt)
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, keymap_opt)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, keymap_opt)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, keymap_opt)
    end,
})
