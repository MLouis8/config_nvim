--[[ init.lua ]]
local g = vim.g

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
g.mapleader = ","
g.localleader = "\\"
g.loaded = 1
g.loaded_netrwPlugin = 1

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup({
    view = {
		adaptive_size = true,
		width = 20,
        mappings = {
            list = {
        			{ key = "u", action = "dir_up" },
      			},
    		},
  	},
  	filters = {
    		dotfiles = true,
  	},
})
require('lualine').setup{
    options = { theme = 'gruvbox' }
}
require('nvim-autopairs').setup()
