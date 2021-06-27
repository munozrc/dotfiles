call plug#begin('~/.config/nvim/plugged')
" Themes
Plug 'joshdick/onedark.vim'

" Airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colorize all text in the form RBG HEX
Plug 'lilydjwg/colorizer'

" Intellisense 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax support
Plug 'sheerun/vim-polyglot'

" Easy motion
Plug 'easymotion/vim-easymotion'

" File explorer
Plug 'scrooloose/nerdtree'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Autoclose tags
Plug 'alvan/vim-closetag'

call plug#end()
