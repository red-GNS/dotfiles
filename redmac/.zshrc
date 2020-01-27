#!/bin/sh

source /etc/profile
echo "Setting up you local mac environment"
REDMACDIR=$HOME/.dotfiles/redmac
setopt +o nomatch

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source $REDMACDIR/aliases
source $REDMACDIR/zplugrc
source $REDMACDIR/papis



# Path:
export PATH="/usr/local/sbin:"$PATH
export PATH="/anaconda3/bin/:"$PATH
export PATH="$HOME/miniconda3/bin/:"$PATH

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh


