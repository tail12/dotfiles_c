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
if [ -f '$HOME/google-cloud-sdk/path.zsh.inc' ]; then . '$HOME/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/google-cloud-sdk/completion.zsh.inc' ]; then . '$HOME/google-cloud-sdk/completion.zsh.inc'; fi


