let g:ruby_host_prog = expand("~/.local/share/gem/ruby/3.0.0/bin/neovim-ruby-host") 
let g:python3_host_prog = expand("/usr/bin/python3")
let g:python_host_prog = expand("/usr/bin/python2")

" General Settings
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keys.vim

" Plug configs
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/themes/airline.vim

" Current Theme
source $HOME/.config/nvim/themes/onedark.vim
