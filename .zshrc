DOTFILES=$HOME/dotfiles
source $DOTFILES/.zprofile

# zplug
ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
#
## plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"

zplug load --verbose

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/icchy/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/icchy/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/icchy/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/icchy/google-cloud-sdk/completion.zsh.inc'; fi


