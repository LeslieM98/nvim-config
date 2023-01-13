local map = vim.api.nvim_set_keymap
vim.g.mapleader = ";"
vim.g.maplocalleader = ":"
map("", "<F4>", ":Neoformat<CR>", { noremap = true})
