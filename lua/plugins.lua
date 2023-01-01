require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'
    -- LSP
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    -- Debugging
    use 'mfussenegger/nvim-dap'
    -- Linter
    use 'jose-elias-alvarez/null-ls.nvim'
    -- Rust Lang
    use 'simrat39/rust-tools.nvim'
    use 'timonv/vim-cargo'
    -- Utillity
    use 'nvim-lua/plenary.nvim'
    -- Autocomplete
    use 'ms-jpq/coq_nvim'
    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'
    -- Spacebar menu
    use 'folke/which-key.nvim'
    -- Icones
    use 'nvim-tree/nvim-web-devicons'
    -- Rust
    use 'simrat39/rust-tools.nvim'
    -- Filesexplorer
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use 'nvim-tree/nvim-tree.lua'
    -- Outline
    use 'simrat39/symbols-outline.nvim'

end)
require("nvim-tree").setup()
require("symbols-outline").setup()
