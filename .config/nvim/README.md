# Neovim Config

Install plugin manager **junegunn/vim-plug**
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Install node version manager **nvm-sh/nvm**
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```
Install the latest version or the stable version of NodeJS
```bash
nvm install node
```
install neovim packages for different languages
```bash
pip install neovim
gem install neovim
npm i -g neovim
```
to install the plugins run the following command inside neovim.
```bash
:PlugInstall
```
You can also run the following command to check if the neovim configuration is correct.
```bash
:checkhealth
```
