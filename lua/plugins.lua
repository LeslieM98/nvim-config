require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'navarasu/onedark.nvim',
        config = function() require('onedark').load() end}
    use 'sbdchd/neoformat'
    -- Rust
    use { "williamboman/mason.nvim",
        config = function() require('mason').setup() end}

    use 'neovim/nvim-lspconfig'
    use {'simrat39/rust-tools.nvim', ft = {'rust'}}
    use {'timonv/vim-cargo',
        ft = {'rust'},
        requires = {'simrat39/rust-tools.nvim'},
        config = function() require('rust-config') end}
    -- Autocompletion
    use {'ms-jpq/coq_nvim',
        config = function() require('coq-config') end}
    -- Tree
    use 'nvim-tree/nvim-tree.lua'

end)
require("nvim-tree").setup()
