#environment variables
export PATH="${HOME}/Library/Python/3.6/bin:$PATH"

#zsh
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git bundler osx rake ruby docker docker-compose)
source $ZSH/oh-my-zsh.sh

#rbenv
eval "$(rbenv init -)"
export RBENV_VERSION=2.4.1

#iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#grep
alias grep="ag --ignore-dir='vendor' --ignore-dir='_static' --ignore-dir='node_modules' --ignore-dir='dist' --color"

#editor
export EDITOR='nvim'
alias ctags="`brew --prefix`/bin/ctags"
alias n="nvim"

#git
export LOLCOMMITS_ANIMATE=1
alias gitclean="git branch | grep -v 'development' | grep -v 'master' | xargs -L1 git branch -D"
alias dbbeta="docker-compose run --rm database-cli $(cat ~/database_url)"
alias gpa="git-pull-all"
