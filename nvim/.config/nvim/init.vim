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

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Master TPope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

"colorschemes
Plug 'gruvbox-community/gruvbox'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Misc
Plug 'tommcdo/vim-lion'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'darrikonn/vim-gofmt'
call plug#end()

" treesitter (highlight not enabled to this colorscheme) and statusline theme
lua require'nvim-treesitter.configs'.setup { incremental_selection = { enable = true }, textobjects = { enable = true }, indentation = { enable = true }}
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

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
