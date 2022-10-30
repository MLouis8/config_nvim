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
        requires = 'nvim-lua/plenary.nvim'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- [[ Dev ]]
    use 'windwp/nvim-autopairs'                    -- auto close brackets, etc.
    use '0xHyoga/starknet-vim'                     -- write Cairo
    use 'dense-analysis/ale'                       -- Asynchronous Lint Engine compatible with starknet vi
    use 'tpope/vim-fugitive'                       -- git integration
    use 'sbdchd/neoformat'                         -- format code
    use 'preservim/vim-markdown'                   -- markdow integration
    use 'iamcco/markdown-preview.nvim'             -- markdown preview
    use {
        'shougo/deoplete.nvim',
        requires = {
            { 'roxma/nvim-yarp' },
            {'roxma/vim-hug-neovim-rpc'}
        }
    }
end)
