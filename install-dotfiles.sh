#!/bin/bash

ln -s -f $HOME/.vimrc .vimrc
ln -s -f $HOME/.vimrc.after .vimrc.after
ln -s -f $HOME/.vimrc.before .vimrc.before
ln -s -f $HOME/.zshrc .zshrc

vim +PluginInstall +qall
vim +PluginUpdate +qall
