--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local replace = vim.api.nvim_replace_termcodes
local pumvisible = vim.fn.pumvisible

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle more plugins
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

-- remap Autocompletion
local function t(str)
    return replace(str, true, true, true)
end

function _G.smart_tab()
    return pumvisible() == 1 and t'<C-N>' or t'<Tab>'
end

map('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})
