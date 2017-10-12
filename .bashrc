export PATH="/home/thoth/melbayad/.local/bin:~/.local/sbin:/home/thoth/melbayad/bin:/home/thoth/melbayad/.gem/ruby/2.3.0/bin"
export PATH=$PATH":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH='/home/thoth/melbayad/scratch/tools/srilm/bin/:/home/thoth/melbayad/scratch/tools/srilm/bin/i686-m64:'$PATH
# CUDA:
export CUDA="/scratch/aquarius/tlucas/Libs/cuda8RCpatched"
# export CUDA="/scratch/algorab/tlucas/src/cuda8RCpatched"
export CUDA_libs="$CUDA/lib64"
export CUDA_bin="$CUDA/bin"
export LD_LIBRARY_PATH="$CUDA_libs:$LD_LIBRARY_PATH"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$CUDA/include"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$CUDA/include"
export PATH="$CUDA_bin:$PATH"
export CUDNN_ROOT="/home/lear/kshmelko/scratch/libs/cudnn5"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$CUDNN_ROOT/lib64"
export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$CUDNN_ROOT/include"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:$CUDNN_ROOT/include"
export LIBRARY_PATH="$LIBRARY_PATH:$CUDNN_ROOT/lib64"
# added by Anaconda2 4.3.1 installer
export PATH="/home/thoth/melbayad/scratch/Env/anaconda/bin:$PATH"
export TORCH_HOME="/home/thoth/melbayad/scratch/.torch"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
