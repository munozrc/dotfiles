" ======================================= "
" ==========::: Set Servers :::========== "
" ======================================= "

let g:loaded_python_provider = 0
let g:loaded_perl_provider = 0
let g:ruby_host_prog = expand("~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host") 
let g:python3_host_prog = expand("/usr/bin/python")

" ===================================================== "
" ==========::: Vim-Plug (Plugin Manager) :::========== "
" ===================================================== "

call plug#begin("~/.config/nvim/plugged")

" ::: Looks and GUI stuff
Plug 'morhetz/gruvbox'			" Theme Gruvbox bg=dark/light
Plug 'joshdick/onedark.vim'		" Theme Onedark 
Plug 'vim-airline/vim-airline' 		" Airline status bar 
Plug 'vim-airline/vim-airline-themes' 	" Add support theme airline

" ::: Functionalities
Plug 'scrooloose/nerdtree'				" File explorer
Plug 'neoclide/coc.nvim', {'branch': 'release'}		" Intellisense
Plug 'lilydjwg/colorizer' 				" Show colors in noevim
Plug 'alvan/vim-closetag'                               " Auto close tag elements
Plug 'tpope/vim-commentary'                             " Comment stuff out

" ::: Syntax Support
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

call plug#end()

" =========================================== "
" ==========::: General Setting :::========== "
" =========================================== "

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
set termguicolors		" Enable true colors in terminal
set nobackup			" Disable backup files
set nowritebackup		" Disable backup files
set noswapfile			" Disable temp files
set nowrap			" Do not split the line if it is very long
set expandtab
set smarttab

" ======================================== "
" ==========::: Mapping Keys :::========== "
" ======================================== "

let g:mapleader=","

" Save Current file in normal mode
nnoremap <C-s> :w<CR>

" Quit current file in normal mode
nnoremap <C-q> :q<CR>

" Remap escape in normal mode
nnoremap <C-c> <Esc>

" Remap escape in insert mode
inoremap jk <Esc> 

" Move to next buffer
nnoremap <Leader>l :bn<CR>

" Mode to previous buffer
nnoremap <Leader>j :bp<CR>

" Delete to current buffer
nnoremap <Leader>q :bd<CR>

" ================================================ "
" ==========::: Current Theme Neovim :::========== "
" ================================================ "
colorscheme onedark 

" ================================================= "
" ==========::: Plugin Configurations :::========== "
" ================================================= "

" ::: {{ NerdTree }}
" Open and Close NerdTree file explorer
nmap <Leader>n :NERDTreeToggle<CR>

" ::: {{ Vim-Closetag }}
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.xml,*.html,*.jsx,*.tsx'
" Shortcut for closing tags
let g:closetag_shortcut = '>'

" ::: {{ Airline Config }}
" Show top status bar
let g:airline#extensions#tabline#enabled = 1
" Eneble use symbols fonts
let g:airline_powerline_fonts = 0 

" ::: {{ Coc Config }}
" Install extensions by Coc
let g:coc_global_extensions = [
	\"coc-tsserver", 
	\"coc-pyright",
	\"coc-json",
	\"coc-html",
	\"coc-css",
	\"coc-prettier",
	\]

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
set updatetime=300

" Set //
set signcolumn=yes

" Navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
