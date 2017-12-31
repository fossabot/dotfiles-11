#!/bin/bash

if [[ $OSTYPE =~ "darwin" ]]
then
  sh ./osx.sh;
elif [[ "$OSTYPE" == "linux-gnu" ]]
then
  sh ./linux.sh;
else
  echo "OS not supported"
  exit 1
fi

# Generic actions on all OS
curl -L https://bit.ly/janus-bootstrap | bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
