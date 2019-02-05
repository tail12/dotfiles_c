autoload -U compinit

# 見える部分
## PROMPT='%m:%c %n$ '
PROMPT="%F{yellow}[%~]%f
$ " 

# PATH
export PATH="$PATH:./node_modules/.bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew

## golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
NODE_PATH=/usr/local/lib/node_module

## pip
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

## pyenv
export PYENV_ROOT=/usr/local/var/pyenv
eval "$(pyenv init -)"

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

# gcp
# alias kubectl='/usr/local/bin/kubectl'

## visual studio code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* }
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.alias.secret
