export SHELL=/usr/bin/zsh
export ZSH=~/.oh-my-zsh
#export LC_ALL="en_US.UTF-8"
COMPLETION_WAITING_DOTS="false"

plugins=(vim)
plugins+=(python)
plugins+=(tmux)
plugins+=(git)
# plugins+=(vi-mode)
# User configuration
PASCAL="gentoo"
INRIA="dieter"
EDGAR="gallois"
GPU="gentoo"
RED="avit"
LIG="avit"

set_inria (){
    echo "Custom setting for Inria machines"
    export PATH="/home/thoth/melbayad/scratch/Env/anaconda/bin"
    export PATH=$PATH":/home/thoth/melbayad/.local/bin:~/.local/sbin:/home/thoth/melbayad/bin"
    export PATH=$PATH":/home/thoth/melbayad/.gem/ruby/2.3.0/bin"
    export PATH=$PATH":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin"
    export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin/i686-m64"
    export PRINTER=impression_toshiba
    alias p='cd ~/scratch/work/torchcap'
    alias sq='cd ~/scratch/work/seq2seq'
    setg
}

set_redgns (){
    echo "Custom setting for REDGNS"
    export THEME='avit'
    export PATH="/home/maha/anaconda3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin"
    export PATH=$PATH":/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"
    export PATH=$PATH":/usr/local/texlive/2016/bin/x86_64-linux:/usr/lib/nvidia-375/bin"
    export LD_LIBRARY_PATH="/usr/lib/nvidia-375:"$LD_LIBRARY_PATH
    export PYTHONPATH=$PYTHONPATH:/usr/local/cellar/caffe/python
    alias p='cd ~/work/torchcap'
    alias ic='cd ~/.config/i3'
    setxkbmap fr
}

set_lig (){
    echo "Custom setting for LIG servers"
    export THEME='awesomepanda'
    export PATH="/home/getalp/elbayadm/.local/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    export PATH="/home/getalp/elbayadm/anaconda3/bin:"$PATH
    export PATH="/home/getalp/elbayadm/Libs/jdk-9/bin:"$PATH
    export PATH="/home/getalp/Toolkits/SRILM_1_6_0/bin/i686-m64:"$PATH
    alias p='cd ~/work/torchcap'
    alias sq='cd ~/work/seq2seq'
}


case ${HOST:r:r} in 
    gpuhost*) ZSH_THEME=$GPU
              source ~/.inriarc
              set_gpuhost;;
    edgar)  ZSH_THEME=$EDGAR
            source ~/.inriarc
            set_inria;;
    pascal) ZSH_THEME=$PASCAL
            source ~/.inriarc
            set_inria;;
    zeus |aquarius |clear) ZSH_THEME=$INRIA
                           source ~/.inriarc
                           set_inria;;
    redgns) ZSH_THEME=$RED
            source ~/.redrc
            set_redgns;;
    decore*) ZSH_THEME=$LIG
             source ~/.ligrc
             set_lig;;
    dvorak*) ZSH_THEME=$LIG
             source ~/.ligrc
             set_lig;;
    hyperion) ZSH_THEME=$LIG
             source ~/.ligrc
             set_lig;;
    *)  echo "Unknown whereabouts!!";;
esac

source $ZSH/oh-my-zsh.sh
source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

