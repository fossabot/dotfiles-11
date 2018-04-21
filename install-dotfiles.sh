#!/bin/bash

cp .vimrc.after $HOME/.vimrc.after
cp .vimrc.before $HOME/.vimrc.before

curl -L https://iterm2.com/shell_integration/zsh \
     -o ~/.iterm2_shell_integration.zsh
cp .zshrc $HOME/.zshrc

git clone https://github.com/stulzer/heroku-colorscheme.git $HOME/.vim/janus/vim/colors/heroku-colorscheme

vim +PluginInstall +qall
vim +PluginUpdate +qall
