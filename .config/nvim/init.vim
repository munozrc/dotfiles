syntax enable 

set number
set relativenumber
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus
set noerrorbells
set expandtab
set smartindent
set rnu
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set termguicolors
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'joshdick/onedark.vim'
" Visual
Plug 'lilydjwg/colorizer'
" Functional
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" Current Theme
colorscheme onedark

" Custom Shortcuts
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
