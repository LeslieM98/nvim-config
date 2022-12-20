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
end)
