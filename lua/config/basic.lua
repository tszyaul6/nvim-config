vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.clipboard = "unnamedplus"
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.splitbelow = true
vim.o.splitright = true

local keymap_opts = { noremap = true, silent = true }
vim.keymap.set("i", "jk", "<Esc>", keymap_opts)
vim.keymap.set("v", "<", "<gv", keymap_opts)
vim.keymap.set("v", ">", ">gv", keymap_opts)
vim.keymap.set("v", "p", "pgvy", keymap_opts)
vim.keymap.set("n", "H", ":bprevious<CR>", keymap_opts)
vim.keymap.set("n", "L", ":bnext<CR>", keymap_opts)
