#!/bin/sh

echo "Setting up you environment @redgns"
REDDIR=$HOME/.dotfiles/red
source $REDDIR/aliases
source $REDDIR/zplugrc
source $REDDIR/papis
source $REDDIR/sync
source $REDDIR/todoist
setxkbmap fr


# Path:
export PATH="$HOME/.local/bin:$HOME/miniconda2/bin:$HOME/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin"
export PATH=$PATH":/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH=$PATH":/usr/local/texlive/2016/bin/x86_64-linux:/usr/lib/nvidia-375/bin"
export PATH=$PATH":$HOME/.red/"
export PATH=$PATH":$HOME/.cargo/bin"
export PATH="$HOME/.npm-global/bin:"$PATH
export PATH="$HOME/.gem/ruby/2.5.0/bin:"$PATH
export PATH="$HOME/.dotfiles/red/:"$PATH

#export LD_LIBRARY_PATH="/home/maha/anaconda3/lib:/usr/lib:/usr/lib/nvidia-375:"$LD_LIBRARY_PATH
#source $REDDIR/cuda

# Pure:
autoload -U promptinit; promptinit
prompt pure
