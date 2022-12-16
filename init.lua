require('plugins')
require('onedark').load()
require('mason').setup()
require('rust-config')
require('nvim-web-devicons').setup()
require('which-key').setup()
require('keymaps')

vim.wo.number = true

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true

