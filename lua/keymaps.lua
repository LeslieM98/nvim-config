local wk = require('which-key')
local map = vim.api.nvim_set_keymap
vim.g.mapleader = ";"
vim.g.maplocalleader = ":"
map('', '<Space>', '<Nop>', { noremap = true, silent = true })
map('n', '<Space>', ":WhichKey<cr>", {})
map('n', '<leader>g', ":echo 'works'<cr>", {})


wk.register({
    ["<leader>f"] = {"<cmd> Telescope find_files<cr>", "Find file"}
})
wk.register({
    ["<leader>o"] = {"<cmd> SymbolsOutline<cr>", "Outline"}
})
wk.register({
    ["<leader>t"] = {"<cmd> NvimTreeToggle<cr>", "Outline"}
})

wk.register({
    ["<leader>b"] = {name = "+Cargo"},
    ["<leader>bc"] = {"<cmd>CargoClean<cr>", "Cargo Clean"},
    ["<leader>br"] = {"<cmd>CargoRun<cr>", "Cargo Run"},
    ["<leader>bb"] = {"<cmd>CargoBuild<cr>", "Cargo Build"},
    ["<leader>bq"] = {"<cmd>CargoBench<cr>", "Cargo Bench"},
    ["<leader>bt"] = {"<cmd>CargoTest<cr>", "Cargo Test"}
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
