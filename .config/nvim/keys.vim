" Set Leader Key
let g:mapleader=","

" Motion on speed 
nmap <Leader>s <Plug>(easymotion-s2)

" Open file system explorer
nmap <Leader>n :NERDTreeFind<CR>

" Remap escape
nnoremap <C-c> <Esc>
inoremap kk <Esc>

" Move to next buffer
nnoremap <Leader>l :bnext<CR>

" Move to back buffer
nnoremap <Leader>j :bprevious<CR>

" Close current buffer
nnoremap <Leader>q :bdelete<CR>
