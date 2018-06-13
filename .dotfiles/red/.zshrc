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
export PATH="/home/maha/.local/bin:/home/maha/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin"
export PATH=$PATH":/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
export PATH=$PATH":/usr/local/texlive/2016/bin/x86_64-linux:/usr/lib/nvidia-375/bin"
export PATH=$PATH":/home/maha/.red/"
export PATH=$PATH":/home/maha/.cargo/bin"
export PATH="/home/maha/.npm-global/bin:"$PATH
export PATH="/home/maha/.gem/ruby/2.5.0/bin:"$PATH
#export LD_LIBRARY_PATH="/home/maha/anaconda3/lib:/usr/lib:/usr/lib/nvidia-375:"$LD_LIBRARY_PATH
#source $REDDIR/cuda

# Pure:
autoload -U promptinit; promptinit
prompt pure
