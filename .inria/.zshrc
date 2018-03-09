#!/bin/sh
echo "Setting up you environment @inria"

# Cuda and Cudnn
source ~/.inria/cuda
source ~/.inria/oar

# Path:
export PATH="/home/thoth/melbayad/scratch/Env/anaconda/bin"
export PATH=$PATH":/home/thoth/melbayad/.local/bin:~/.local/sbin:/~/bin"
export PATH=$PATH":/home/thoth/melbayad/.gem/ruby/2.3.0/bin"
export PATH=$PATH":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin"
export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin/i686-m64"
export PRINTER=impression_toshiba
export TORCH_HOME="/home/thoth/melbayad/scratch/.torch"

