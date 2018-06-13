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
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64/
export LD_LIBRARY_PATH=/home/getalp/elbayadm/anaconda3/lib/:$LD_LIBRARY_PATH

export TORCH_HOME="/home/getalp/elbayadm/.torch"
source $LIGDIR/gpu
source $LIGDIR/sync
source $LIGDIR/oar

alias check='watch -n30 "ps -xrU elbayadm | grep yaml"'

setcuda80 () {
  export CUDA_HOME="/home/getalp/elbayadm/opt/cuda80_patched"
  export CUDA_libs="$CUDA_HOME/lib64"
  export CUDA_bin="$CUDA_HOME/bin"
  export LD_LIBRARY_PATH="$CUDA_libs:$LD_LIBRARY_PATH"
  export CPLUS_INCLUDE_PATH="$CUDA_HOME/include:$CPLUS_INCLUDE_PATH"
  export C_INCLUDE_PATH="$CUDA_HOME/include:$C_INCLUDE_PATH"
  export PATH="$CUDA_bin:$PATH"
}


setcudnn51 () {
    export CUDNN_ROOT="/home/getalp/elbayadm/opt/cudnn_5.1"
    export CUDNN_LIB_DIR="$CUDNN_ROOT/lib64"
    export CUDNN_LIBRARY="$CUDNN_LIB_DIR/libcudnn.so"
    export LD_LIBRARY_PATH="$CUDNN_LIB_DIR:$LD_LIBRARY_PATH"
    export LIBRARY_PATH="$CUDNN_LIB_DIR:$LIBRARY_PATH"
    export CUDNN_INCLUDE_DIR="$CUDNN_ROOT/include"
    export CPLUS_INCLUDE_PATH="$CUDNN_INCLUDE_DIR:$CPLUS_INCLUDE_PATH"
    export C_INCLUDE_PATH="$CUDNN_INCLUDE_DIR:$C_INCLUDE_PATH"
}

setcuda_common (){
    export CUDA_HOME="/usr/local/cuda-8.0"
    export CUDA_libs="$CUDA_HOME/lib64"
    export CUDA_bin="$CUDA_HOME/bin"
    export LD_LIBRARY_PATH="$CUDA_libs:$LD_LIBRARY_PATH"
    export CPLUS_INCLUDE_PATH="$CUDA_HOME/include:$CPLUS_INCLUDE_PATH"
    export C_INCLUDE_PATH="$CUDA_HOME/include:$C_INCLUDE_PATH"
    export PATH="$CUDA_bin:$PATH"
}


setcuda80
setcudnn51


