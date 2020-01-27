#!/usr/bin/env zsh
echo "Setting up you environment @inria"
INRIADIR=$HOME/.dotfiles/inria
# Cuda and Cudnn
source $INRIADIR/oar

# ZGEN
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
    # specify plugins here
    zgen prezto
    zgen prezto tmux
    zgen prezto git
    zgen prezto editor key-bindings 'vi'
    zgen load zsh-users/zsh-completions src
    zgen load TBSliver/zsh-plugin-colored-man
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load tarruda/zsh-autosuggestions
    # generate the init script from plugins above
    zgen save
fi

# ZPLUG (Too slow)
#export ZPLUG_HOME=/home/melbayad/.zplug
#source $ZPLUG_HOME/init.zsh
#source $INRIADIR/zplugrc

# Path:
export PATH="/home/melbayad/.env/miniconda3/bin"
export PATH=$PATH":/home/thoth/melbayad/.gem/ruby/2.3.0/bin"
export PATH=$PATH":/home/thoth/melbayad/.local/bin:~/.local/sbin:/~/bin"
export PATH=$PATH":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
#export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin"
#export PATH=$PATH":/home/thoth/melbayad/scratch/tools/srilm/bin/i686-m64"
export PRINTER=impression_toshiba
#export TORCH_HOME="/home/thoth/melbayad/scratch/.torch"
#source $INRIADIR/cuda
#source activate fairseq
