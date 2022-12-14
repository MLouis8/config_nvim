--[[ opts.lua ]]
local opt   = vim.opt
local g     = vim.g
local cmd   = vim.cmd

--g['python3_host_prog'] = '/Users/louismilhaud/cairo_venv/bin/python3'

-- [[ Context ]]
opt.number = true                -- bool: Show line numbers
opt.scrolloff = 4                -- int:  Min num lines of context

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
cmd([[hi Pmenu ctermbg=Gray]])
cmd([[hi NvimTreeWinSeparator guifg=#FFFFFF guibg=NONE]])

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one

-- [[ Deoplete ]]
--g['loaded_python3_provider'] = 0 -- prevent python provider error message see help provider.txt for further informations
g['deoplete#enable_at_startup'] = 1

-- [[ ALE ]]
g['ale_completion_enabled'] = 1
g['ale_completion_autoimport'] = 1
g['ale_sign_column_always'] = 1
g['ale_fix_on_save'] = 1

-- [[ Ocaml ]]
-- g.opamshare = substitute(system('opam config var share'),'\n$','','''')
-- execute "set rtp+=" . g.opamshare . "/merlin/vim"
