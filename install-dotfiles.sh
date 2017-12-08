#!/bin/bash

ln -s -f .vimrc $HOME/.vimrc
ln -s -f .vimrc.after $HOME/.vimrc.after
ln -s -f .vimrc.before $HOME/.vimrc.before
ln -s -f .zshrc $HOME/.zshrc

vim +PluginInstall +qall
vim +PluginUpdate +qall
