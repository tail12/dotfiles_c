autoload -U compinit

# 見える部分
## PROMPT='%m:%c %n$ '
PROMPT="%F{yellow}[%~]%f
$ " 

# PATH
#export PATH="$PATH:./node_modules/.bin"
#export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/var/nodebrew/current/bin:$PATH
#export NODEBREW_ROOT=/usr/local/var/nodebrew

# pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#
#eval "$(pyenv virtualenv-init -)"

## golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
NODE_PATH=/usr/local/lib/node_module

## pip
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

## pyenv
#export PYENV_ROOT=/usr/local/var/pyenv
#eval "$(pyenv init -)"

## sam
USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

# zplug
ZPLUG_HOME=~/dotfiles/.zplug

# alias
## git
alias g=git
alias stt='git status -uno'
alias cmm='git commit -m'

## golang
alias lgo='GOOS=linux GOARCH=amd64 go'

# gcp
# alias kubectl='/usr/local/bin/kubectl'
alias kubectl='~/google-cloud-sdk/bin/kubectl'

## visual studio code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* }
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.alias.secret
