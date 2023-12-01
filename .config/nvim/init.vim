call plug#begin('~/local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'adelarsq/vim-matchit'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'python-mode/python-mode'
", { 'for': 'python', 'branch': 'develop' }
Plug 'nightsense/strawberry'
Plug 'mhinz/vim-startify'
Plug 'dracula/vim'
Plug 'arzg/vim-colors-xcode'
" Conquer of completion for LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gabrielelana/vim-markdown'
" This plugin needs to be at the end
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme strawberry-light
syntax on
set encoding=UTF-8
set number relativenumber
let maplocalleader = ' '
let mapleader = ','
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set guicursor+=n:hor20-Cursor/lCursor
set guicursor+=i:hor20-Cursor/lCursor
set scrolloff=8
set termguicolors
set incsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set smartindent
set hidden
set wrap
set linebreak
set whichwrap+=<,>,h,l
set smartindent
set foldenable
set foldmethod=indent
highlight Normal guibg=NONE
set list lcs=tab:\|\ 
set clipboard=unnamed
set shortmess+=c

"Vim Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep =''
let g:airline#extensions#tabline#left_sep_alt =''
let g:airline_powerline_fonts = 1
let g:airline_theme = 'sol'
"let g:airline_theme = 'base16_atelier_seaside_light'

" NERDTree
let NERDTreeShowHidden = 1

" VimTeX
let g:vimtex_view_general_viewer = 'zathura'

"python-mode
let python_highlight_all = 1

" Mappings
map <C-o> :NERDTreeToggle<CR>
map <M-Tab> :bnext<CR>
map <M-w>  :bdelete<CR>
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR> 
