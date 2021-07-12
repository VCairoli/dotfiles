call plug#begin('~/.vim/plugged')

"the fzf
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"color theme
Plug 'gruvbox-community/gruvbox'

"LSP thingies
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'hrsh7th/nvim-compe'
Plug 'kabouzeid/nvim-lspinstall'

" Master TPope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'

"colorschemes
Plug 'tpope/vim-vividchalk'
Plug 'jdsimcoe/hyper.vim'
Plug 'ParamagicDev/vim-medic_chalk'
Plug 'agude/vim-eldar'
call plug#end()

colorscheme medic_chalk

" beloved gruvbox
"let g:gruvbox_contrast_dark = 'hard'
"    if exists('+termguicolors')
"        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"    endif
"let g:gruvbox_invert_selection='0'
"
"set background=dark
"hi CursorLineNR guibg=None
"highlight Normal guibg=none
"highlight LineNr guifg=#5eacd3
"hi SignColumn guibg=none
"highlight netrwDir guifg=#5eacd3
"highlight qfFileName guifg=#aed75f
"highlight ColorColumn ctermbg=0 guibg=grey
"hi TelescopeBorder guifg=#5eacd

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
nnoremap <leader>p "+p

" Moving around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>l <C-l>
