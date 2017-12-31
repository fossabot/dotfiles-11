export PATH="${HOME}/Library/Python/3.6/bin:$PATH"

export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git bundler osx rake ruby docker docker-compose)
source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
export RBENV_VERSION=2.4.1

export EDITOR='nvim'
export LOLCOMMITS_ANIMATE=1

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias grep="ag --ignore-dir='dist' --color"
alias ctags="`brew --prefix`/bin/ctags"
alias n="nvim"

alias gitclean="git branch | grep -v 'development' | grep -v 'master' | xargs -L1 git branch -D"
alias dbbeta="docker-compose run --rm database-cli $(cat ~/database_url)"
alias gpa="git-pull-all"
