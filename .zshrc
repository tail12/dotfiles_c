DOTFILES=$HOME/dotfiles
source $DOTFILES/.zprofile
source $DOTFILES/.zstatusline

# zplug
ZPLUG_HOME=/usr/local/opt/zplug
if [[ -f $ZPLUG_HOME/init.zsh ]]; then
    export ZPLUG_LOADFILE=$DOTFILES/.zsh/zplug.zsh
    source $ZPLUG_HOME/init.zsh
fi

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

## plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"

# zplug load --verbose
zplug load

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

export LANG="ja_JP.UTF-8"

# peco
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

alias dps='docker ps --format "{{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Command}}\t{{.RunningFor}}"'
alias de='docker exec -it `dps | peco | cut -f 1` /bin/bash'
alias -g cons='`docker ps -a|peco| cut -d" " -f 1`'

