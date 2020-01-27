#!/usr/bin/env zsh
LIGDIR=$HOME/.dotfiles/lig
echo "Setting up you environment @lig"

export LANG="fr_FR.UTF-8"
export LC_MESSAGES="POSIX"
export LC_ALL="fr_FR.UTF-8"


# Path:
export PATH="/home/getalp/elbayadm/.local/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="/home/getalp/elbayadm/anaconda3/bin:"$PATH
export PATH="/home/getalp/elbayadm/opt/jdk-9/bin:"$PATH
export PATH="/home/getalp/Toolkits/SRILM_1_6_0/bin/i686-m64:"$PATH

# LD:
export LD_LIBRARY_PATH=/usr/lib/:/usr/lib/x86_64-linux-gnu/:
export LD_LIBRARY_PATH=/usr/local/lib/:/lib/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/getalp/elbayadm/anaconda3/lib/:$LD_LIBRARY_PATH

export TORCH_HOME="/home/getalp/elbayadm/.torch"
source $LIGDIR/gpu
source $LIGDIR/cuda
source $LIGDIR/sync
source $LIGDIR/oar

alias check='watch -n30 "ps -xrU elbayadm | grep yaml"'

#source activate fairseq
