#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
#export INCLUDES=$DOTFILES/plugins

source $DOTFILES/setopt
source $DOTFILES/env
source $DOTFILES/zsh-history-substring-search.zsh
source $DOTFILES/history
source $DOTFILES/bindkeys
#source $DOTFILES/prompt

# Aliases:
unalias -a

fpath=($fpath "$HOME/.zfunctions")
autoload -U promptinit; promptinit

set_inria (){
    source $DOTFILES/inria/.zshrc
    prompt bart
    #prompt restore
    }

set_redmac (){
    source $DOTFILES/redmac/.zshrc
    }

set_red (){
    source $DOTFILES/red/.zshrc
    prompt bigfade
    }

set_lig (){
    source $DOTFILES/lig/.zshrc
    prompt bart
    }

set_fair (){
    source $DOTFILES/fair/.zshrc
    prompt restore
    }


case ${HOST:r:r}$HOSTNAME in 
    gpuhost* | edgar | pascal) set_inria ;;
    zeus | aquarius| gemini | artemis |clear) set_inria ;;
    decore*| dvorak*| lig*| ceos| hyperion | aker) set_lig ;;
    devfair*| learnfair* | elbayad*) set_fair ;;
    redgns) set_red ;;
    Maha*) set_redmac ;;
    *)  echo "Unknown whereabouts!!";;
esac


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/melbayad/.env/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/melbayad/.env/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/melbayad/.env/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/melbayad/.env/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

for alias_file ($DOTFILES/aliases/*.al); do
  source $alias_file
done

