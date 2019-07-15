#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$DOTFILES/plugins

source $DOTFILES/setopt
source $DOTFILES/env
source $DOTFILES/zsh-history-substring-search.zsh
source $DOTFILES/history
source $DOTFILES/bindkeys
#source $DOTFILES/prompt

# Aliases:
unalias -a
for alias_file ($DOTFILES/aliases/*.al); do
  source $alias_file
done

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
    zeus | aquarius |clear) set_inria ;;
    decore*| dvorak*| lig*| ceos| hyperion | aker) set_lig ;;
    devfair*| learnfair* | elbayad*) set_fair ;;
    redgns) set_red ;;
    Maha*) set_redmac ;;
    *)  echo "Unknown whereabouts!!";;
esac


#export PYTHONWARNINGS=ignore::yaml.YAMLLoadWarning

