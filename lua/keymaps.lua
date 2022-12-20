local wk = require('which-key')
local map = vim.api.nvim_set_keymap
vim.g.mapleader = ";"
vim.g.maplocalleader = ":"
map('', '<Space>', '<Nop>', { noremap = true, silent = true })
map('n', '<Space>', ":WhichKey<cr>", {})
map('n', '<leader>g', ":echo 'works'<cr>", {})


wk.register({
  ["<leader>f"] = { name = "+test" },
  ["<leader>fn"] = { "<CMD>echo 'works'<cr>", "Test String" },
})
wk.register({
    ["<leader>c"] = {name = "+code"},
    ["<leader>ch"] = {"<leader>ch", "Hints"},
    ["<leader>ca"] = {"<leader>ca", "Actions"}
})
wk.setup({
  plugins = {
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false
    }}})
