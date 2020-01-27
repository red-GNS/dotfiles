#!/bin/sh

source /etc/profile
echo "Setting up you local mac environment"
REDMACDIR=$HOME/.dotfiles/redmac

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

source $REDMACDIR/aliases
source $REDMACDIR/zplugrc
source $REDMACDIR/papis



# Path:
export PATH="/usr/local/sbin:"$PATH
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
#source $REDMACDIR/cuda


[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/melbayad/.env/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
    #eval "$__conda_setup"
#else
    #if [ -f "/home/melbayad/.env/miniconda3/etc/profile.d/conda.sh" ]; then
        #. "/home/melbayad/.env/miniconda3/etc/profile.d/conda.sh"
    #else
        #export PATH="/home/melbayad/.env/miniconda3/bin:$PATH"
    #fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

