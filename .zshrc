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

# plugins
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"

#zplug load --verbose
