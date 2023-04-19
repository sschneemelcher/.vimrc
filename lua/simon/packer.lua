-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'

    -- catppuccin theme
    use { "catppuccin/nvim", as = "catppuccin" }
    -- everblush theme
    -- use 'Everblush/everblush.nvim'
    use { 'embark-theme/vim', as = 'embark' }

    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'glepnir/lspsaga.nvim'

    use { "sakhnik/nvim-gdb" }
    -- use 'simrat39/symbols-outline.nvim'

    use 'TimUntersberger/neogit'
    use 'mbbill/undotree'

    use 'L3MON4D3/LuaSnip'

    --use 'sbdchd/neoformat'
    use 'rust-lang/rust.vim'

    use 'norcalli/nvim-colorizer.lua'

    use 'nvim-orgmode/orgmode'

    use 'nvim-lualine/lualine.nvim'
    -- use { 'justinhj/battery.nvim', requires = {'nvim-lua/plenary.nvim'}}

    use 'ziglang/zig.vim'

    use 'preservim/vim-markdown'

    use 'lervag/vimtex'

    use 'github/copilot.vim'
end)
