#!/bin/sh

source /etc/profile
echo "Setting up you environment @fair"
FBDIR=$HOME/.dotfiles/fair

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source $FBDIR/aliases/slurm.al

source $FBDIR/zplugrc
source $FBDIR/papis

# Path:
export PATH="/anaconda3/bin/:"$PATH
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

