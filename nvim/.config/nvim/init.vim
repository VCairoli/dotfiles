call plug#begin('~/.vim/plugged')

"the fzf
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"LSP thingies
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Master TPope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

"colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-vividchalk'
Plug 'jdsimcoe/hyper.vim'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'agude/vim-eldar'

" Misc
Plug 'tommcdo/vim-lion'
Plug 'AndrewRadev/splitjoin.vim'
call plug#end()

colorscheme medic_chalk
highlight LineNr guibg=none
highlight ColorColumn guibg=grey
highlight StatusLine guibg=grey

lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }, indent = { enable = true}}
" beloved gruvbox
"let g:gruvbox_invert_selection='0'
"let g:gruvbox_contrast_dark = 'hard'
"    if exists('+termguicolors')
"        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    endif
"set background=dark
"hi CursorLineNR guibg=None
"hi SignColumn guibg=none
"hi TelescopeBorder guifg=#5eacd
"highlight Normal guibg=none
"highlight netrwDir guifg=#5eacd3
"highlight qfFileName guifg=#aed75f
"highlight Normal guibg=none
"highlight Normal ctermbg=none

let mapleader = " "

" Vim remaps
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nmap <leader><leader> <c-^>
nnoremap <leader>pv :Ex<CR>
inoremap <C-c> <esc>


" global copy/paste clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
vnoremap <leader>p "_dP

" Moving around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>l <C-l>

" Keeping cursor centered
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" autocommands
augroup whitespaces
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
