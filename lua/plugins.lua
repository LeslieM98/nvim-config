require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {'navarasu/onedark.nvim'}

    use 'sbdchd/neoformat'

    use 'nvim-treesitter/nvim-treesitter'

    -- Rust
    use { "williamboman/mason.nvim",
        config = function() end}

    use 'neovim/nvim-lspconfig'

    use {'simrat39/rust-tools.nvim'}

    use {'timonv/vim-cargo',
        requires = {'simrat39/rust-tools.nvim'},
        config = function() require('rust-config') end}

    -- Autocompletion
    use {'ms-jpq/coq_nvim'}

    -- Tree
    use {'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'}}

end)
require("nvim-tree").setup({renderer = {
    icons = {
        show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true}}}});

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
