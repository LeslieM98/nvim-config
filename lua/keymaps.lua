local map = vim.api.nvim_set_keymap

vim.g.mapleader = ";"
vim.g.maplocalleader = ":"
map('', '<Space>', '<Nop>', { noremap = true, silent = true })

map('n', '<Space>', ":WhichKey <leader><cr>", {})

map('n', '<leader>g', ":echo 'works'<cr>", {})
map('n', '<leader><localleader>', ":WhichKey <localleader><cr>", {})
