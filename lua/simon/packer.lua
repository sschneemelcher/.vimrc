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


    use("nvim-treesitter/nvim-treesitter")
    use 'nvim-treesitter/nvim-treesitter-context'
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rust-lang/rust.vim'
    use 'ziglang/zig.vim'

    use 'nvim-lualine/lualine.nvim'

    use 'christoomey/vim-tmux-navigator'

    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'

    -- use 'preservim/vim-markdown'
    -- use 'lervag/vimtex'

    -- use 'github/copilot.vim'
end)
