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

" Mapping Keys
let g:mapleader=","		" Set leader key
nnoremap <C-s> :w<CR> 		" Save current file in normal mode
nnoremap <C-q> :q<CR>		" Quit current file in normal mode
nnoremap <C-c> <Esc>		" Remap escape in normal mode
inoremap jk <Esc> 		" Remap escape in insert mode
nnoremap <Leader>l :bn<CR> 	" Move to next buffer
nnoremap <Leader>j :bp<CR> 	" Move to previous buffer
nnoremap <Leader>q :bd<CR> 	" Delete to current buffer
