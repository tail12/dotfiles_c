DOTFILES=$HOME/dotfiles
source $DOTFILES/.zprofile
# zplug
ZPLUG_HOME=$DOTFILES/.zplug
if [[ -f $ZPLUG_HOME/init.zsh ]]; then
  source $ZPLUG_HOME/init.zsh

  if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
      echo; zplug install
    fi
  fi
  zplug load
fi