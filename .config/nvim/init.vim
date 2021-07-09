" General Settings
syntax on			" Turn on syntax highlighting
set cursorline 			" Highlight the current line
set number 			" Show line numbers
set rnu 			" Set relative positions from current line
set mouse=a			" Enable mouse integration within editor
set clipboard=unnamedplus	" Enable clipboard system with editor
set encoding=utf-8		" Set default encoding for files
set colorcolumn=80		" Displays the limit column to 80 characters
set laststatus=2 		" Always display the status line
set hidden			" Allow changing buffers without having to save them
set termguicolors		" Enabke true colors in terminal
set nobackup			" Disable backup files
set nowritebackup		" Disable backup files
set noswapfile			" Disable temp files
set nowrap			" Do not split the line if it is very long

" Set Servers
let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:ruby_host_prog = expand("~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host") 
let g:python3_host_prog = expand("/usr/bin/python")

" Load Plugins
call plug#begin("~/.config/nvim/plugged")
Plug 'morhetz/gruvbox'				" Theme Gruvbox bg=dark/light
Plug 'joshdick/onedark.vim'			" Theme Onedark 
Plug 'scrooloose/nerdtree'			" File explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'}	" Intellisense
Plug 'pangloss/vim-javascript'			" Syntax for js
Plug 'leafgarland/typescript-vim'		" Syntax for ts
Plug 'peitalin/vim-jsx-typescript'		" Syntax for tsx
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'
call plug#end()

" Mapping Keys
let g:mapleader=","		" Set leader key
nnoremap <C-s> :w<CR>		" Save current file in normal mode
nnoremap <C-q> :q<CR>		" Quit current file in normal mode
nnoremap <C-c> <Esc>		" Remap escape in normal mode
inoremap jk <Esc> 		" Remap escape in insert mode
nnoremap <Leader>l :bn<CR> 	" Move to next buffer
nnoremap <Leader>j :bp<CR> 	" Move to previous buffer
nnoremap <Leader>q :bd<CR> 	" Delete to current buffer

" Mapping Keys Plugins
nmap <Leader>n :NERDTreeToggle<CR>	" Open file explorer

" Set Current Theme
colorscheme onedark 

" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Coc Config
let g:coc_global_extensions = ["coc-tsserver", "coc-pyright","coc-json", "coc-html", "coc-css", "coc-prettier"]
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Make <CR> auto-select the first completion item and notify coc.nvim to
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
