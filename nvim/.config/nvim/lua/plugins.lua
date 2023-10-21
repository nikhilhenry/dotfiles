-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- gruvbox theme
    use 'morhetz/gruvbox'
    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- practicing vim 
    use 'ThePrimeagen/vim-be-good'
    -- nvim-treesitter 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- treesitter-context
    use 'nvim-treesitter/nvim-treesitter-context'
    -- nvim-lsp config
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- lsp autocomplete
    use 'hrsh7th/cmp-nvim-lsp' -- lsp autocomplete
    use 'hrsh7th/cmp-buffer' -- lsp autocomplete
    use 'hrsh7th/cmp-path' -- lsp autocomplete
    use 'L3MON4D3/LuaSnip' -- snippet engine
    use 'saadparwaiz1/cmp_luasnip'
    -- darkside
    -- use 'github/copilot.vim'
end)
