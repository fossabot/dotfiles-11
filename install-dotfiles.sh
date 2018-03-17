#!/bin/bash

cp .vimrc.after $HOME/.vimrc.after
cp .vimrc.before $HOME/.vimrc.before

curl -L https://iterm2.com/shell_integration/zsh \
     -o ~/.iterm2_shell_integration.zsh
cp .zshrc $HOME/.zshrc

vim +PluginInstall +qall
vim +PluginUpdate +qall
