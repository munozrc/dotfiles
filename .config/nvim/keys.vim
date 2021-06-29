" Set Leader Key
let g:mapleader=","

" Motion on speed 
nmap <Leader>s <Plug>(easymotion-s2)

" Open file system explorer
nmap <Leader>n :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to save
nnoremap <C-q> :q<CR>

" Remap escape
nnoremap <C-c> <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>

" Move to next buffer
nnoremap <Leader>l :bnext<CR>

" Move to back buffer
nnoremap <Leader>j :bprevious<CR>

" Close current buffer
nnoremap <Leader>q :bdelete<CR>

" Tab
vnoremap < <gv
vnoremap > >gv
