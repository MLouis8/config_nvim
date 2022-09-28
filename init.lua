--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup()
require('lualine').setup{
    options = { theme = 'gruvbox' }
}
require('nvim-autopairs').setup()
require('deoplete').setup()
