vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
        }
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('nvim-lualine/lualine.nvim')
    use ('kdheepak/tabline.nvim')
    use ('lervag/vimtex')
    use ('catppuccin/nvim')
    use ('L3MON4D3/LuaSnip')
    use ('windwp/nvim-autopairs')

	-- LSPZero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
	}

end)
