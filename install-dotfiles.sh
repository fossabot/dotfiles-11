#!/bin/bash

cp .vimrc.after $HOME/.vimrc.after
cp .vimrc.before $HOME/.vimrc.before
cp .zshrc $HOME/.zshrc

vim +PluginInstall +qall
vim +PluginUpdate +qall
