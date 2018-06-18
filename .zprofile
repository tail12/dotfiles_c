autoload -U compinit

# 見える部分
PROMPT='%m:%c %n$ '

# PATH
export PATH="$PATH:./node_modules/.bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODEBREW_ROOT=/usr/local/var/nodebrew
# zplug
ZPLUG_HOME=~/dotfiles/.zplug

# alias
## git
alias g=git
alias stt='git status -uno'
alias cmm='git commit -m'

## visual studio code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* }
