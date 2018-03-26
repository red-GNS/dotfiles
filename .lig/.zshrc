#!/bin/sh
echo "Setting up you environment @lig"

#export LANG="en_US.UTF-8"
#export LC_MESSAGES="POSIX"
#export LC_ALL="en_US.UTF-8"
export LANG="fr_FR.UTF-8"
export LC_MESSAGES="POSIX"
export LC_ALL="fr_FR.UTF-8"


# Path:
export PATH="/home/getalp/elbayadm/.local/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="/home/getalp/elbayadm/anaconda3/bin:"$PATH
export PATH="/home/getalp/elbayadm/opt/jdk-9/bin:"$PATH
export PATH="/home/getalp/Toolkits/SRILM_1_6_0/bin/i686-m64:"$PATH

export TORCH_HOME="/home/getalp/elbayadm/.torch"
source ~/.lig/gpu
source ~/.lig/sync
alias check='watch -n30 "ps -xrU elbayadm | grep python"'




# ZLE
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down



#export LD_LIBRARY_PATH=/usr/lib/:/usr/lib/x86_64-linux-gnu/:
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/:/lib/:
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/getalp/elbayadm/anaconda3/lib/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/getalp/elbayadm/opt/cuddn_5.1/cuda/lib64/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64/
#export LD_LIBRARY_PATH=/home/getalp/elbayadm/anaconda3/lib/

