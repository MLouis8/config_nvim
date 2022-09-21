" Options
set clipboard=unnamedplus

set title
set tabstop=4
set shiftwidth=4
set linebreak
set number

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

set whichwrap+=<,>,[,]
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
tnoremap <Esc> <C-\><C-n> " terminal key for ESC
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set nospell spelllang=en_us
nnoremap <silent> <F6> :set invspell<cr>
inoremap <silent> <F6> <C-O>:set invspell<cr>

" Use deoplete
let g:deoplete#enable_at_startup = 1


" NERDTree config
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif



" Start plugin manager Vim-Plug
call plug#begin('~/.local/share/nvim/site/autoload')

" Plugins list :
Plug 'junegunn/vim-easy-align' 			" vim plug
Plug 'jaredgorski/spacecamp' 			" spacecamp theme
Plug 'danilo-augusto/vim-afterglow'		" afterglow theme
Plug 'cocopon/iceberg.vim/' 			" iceberg theme
Plug 'tomasiser/vim-code-dark' 			" vscode dark theme
Plug 'preservim/nerdtree' 				" tree file opener
Plug 'dracula/vim'						" Dracule theme
Plug 'ghifarit53/tokyonight-vim'		" tokyonight theme
Plug '1612492/github.vim'				" github theme
Plug 'vim-airline/vim-airline'			" bar status 
Plug 'scrooloose/nerdcommenter'			" for comments
Plug 'sbdchd/neoformat'					" code formatting

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi' " jedi for deoplete

" Initialize plugins
call plug#end()

" THEMES

" Options for themes

"for afterglow:
	"let g:afterglow_blackout=1 (default: 0) " uncomment for high constrast
	"let g:afterglow_italic_comments=1 (default: 0)
	"let g:afterglow_inherit_background=1 (default: 0)

"for tokyonight:
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

"for github:
	"syntax on
	"set termguicolors
	"set colorscheme = 'github'


" Uncomment to have new set of colors or theme

"colorscheme spacecamp
"colorscheme spacecamp_lite
"colorscheme afterglow
"colorscheme iceberg
"colorscheme codedark
"colorscheme github
colorscheme tokyonight
"colorscheme dracula
