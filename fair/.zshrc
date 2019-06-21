#!/bin/sh

source /etc/profile
echo "Setting up you environment @fair"
FBDIR=$HOME/.dotfiles/fair

export ZPLUG_HOME=/usr/local/opt/zplug
export ZPLUG_HOME=$HOME/.zplug

source $ZPLUG_HOME/init.zsh

source $FBDIR/aliases
source $FBDIR/zplugrc
source $FBDIR/papis
#source $FBDIR/todoist


# Path:
export PATH="/anaconda3/bin/:"$PATH
#export PATH="/home/maha/.local/bin:/home/maha/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin"
#export PATH=$PATH":/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
#export PATH=$PATH":/usr/local/texlive/2016/bin/x86_64-linux:/usr/lib/nvidia-375/bin"
#export PATH=$PATH":/home/maha/.red/"
#export PATH=$PATH":/home/maha/.cargo/bin"
#export PATH="/home/maha/.npm-global/bin:"$PATH
#export PATH="/home/maha/.gem/ruby/2.5.0/bin:"$PATH
#export PATH="/home/maha/.dotfiles/red/:"$PATH

#export LD_LIBRARY_PATH="/home/maha/anaconda2/lib:/usr/lib:/usr/lib/nvidia-375:"$LD_LIBRARY_PATH
#source $FBDIR/cuda

# Pure:
autoload -U promptinit; promptinit
#prompt restore
#prompt pure
#prompt bart
#prompt spaceship
#SPACESHIP_TIME_SHOW="true"
#SPACESHIP_PROMPT_ADD_NEWLINE="false"
#SPACESHIP_CHAR_SYMBOL=" \uf109"
#SPACESHIP_CHAR_PREFIX="\uf09a"
#SPACESHIP_CHAR_SUFFIX=(" ")
#SPACESHIP_CHAR_COLOR_SUCCESS="green"
#SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
#SPACESHIP_USER_SHOW="always"
#SPACESHIP_HOST_SHOW="true"
#SPACESHIP_BATTERY_SHOW="false"
#SPACESHIP_VI_MODE_SHOW="false"


[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
# Anaconda env
#source ~/.envrc
