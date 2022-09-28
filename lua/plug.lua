-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- [[ Plugins Go Here ]]
    use {                                              -- filesystem navigation
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }  
    use {
        'nvim-telescope/telescope.nvim',                 -- fuzzy finder
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- [[ Theme ]]
    use { "EdenEast/nightfox.nvim", tag = "v1.0.0" }
    
    -- [[ Dev ]]
    use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
    use { '0xHyoga/starknet-vim' }                       -- write Cairo
    use { 'tpope/vim-fugitive'}
end)
