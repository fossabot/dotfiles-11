# go
export GOPATH=$HOME/go

# environment variables
export PATH="${GOPATH//://bin:}/bin:${HOME}/Library/Python/3.6/bin:$PATH"

# zsh
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git bundler osx rake ruby docker docker-compose k)
source $ZSH/oh-my-zsh.sh

# rbenv
eval "$(rbenv init -)"
export RBENV_VERSION=2.4.1

# iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# grep
alias grep="ag --ignore-dir='vendor' --ignore-dir='_static' --ignore-dir='node_modules' --ignore-dir='dist' --ignore='*\.js\.map' --color"

# editor
export EDITOR='nvim'
alias ctags="`brew --prefix`/bin/ctags"
alias n="nvim"

# git
export LOLCOMMITS_ANIMATE=1
alias gitclean="git branch | grep -v 'development' | grep -v 'master' | xargs -L1 git branch -D"
alias dbbeta="docker-compose run --rm database-cli $(cat ~/database_url)"
alias gpa="git-pull-all"

# docker
alias dockerclean="docker container ls -a -q --filter=\"name=_run_\" | xargs docker rm"

# vim-slime
alias ss="screen -S slime"
alias ks="killall SCREEN"
