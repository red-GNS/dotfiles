#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$DOTFILES/plugins

source $DOTFILES/setopt
source $DOTFILES/env
source $DOTFILES/aliases
source $DOTFILES/bindkeys
source $DOTFILES/history
#eval `dircolors $DOTFILES/dircolors`
#source $INCLUDES/git/git-prompt.sh
source $DOTFILES/prompt
# Aliases:
unalias -a
for alias_file ($DOTFILES/aliases/*.al); do
  source $alias_file
done

#source $DOTFILES/completion
#source $INCLUDES/zsh-completions/zsh-completions.plugin.zsh
#source $INCLUDES/zsh-history-substring-search/zsh-history-substring-search.zsh
#source $INCLUDES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

set_inria (){
    source $DOTFILES/inria/.zshrc
    }

set_redgns (){
    source $DOTFILES/red/.zshrc
    }

set_lig (){
    source $DOTFILES/lig/.zshrc
    }

set_fair (){
    source $DOTFILES/fair/.zshrc
    }


case ${HOST:r:r}$HOSTNAME in 
    gpuhost*) ZSH_THEME=$GPU
              set_inria;;
    edgar)  ZSH_THEME=$EDGAR
            set_inria;;
    pascal) ZSH_THEME=$PASCAL
            set_inria;;
    zeus |aquarius |clear) ZSH_THEME=$INRIA
                           plugins+=(tmux)
                           set_inria;;
    redgns) ZSH_THEME=$RED
            set_redgns;;
    decore*| dvorak*| lig*| ceos| hyperion) ZSH_THEME=$LIG
                                            set_lig;;
    aker) ZSH_THEME=$AKER
           set_lig;;

    devfair*| learnfair*) ZSH_THEME=$AKER
           set_fair;;

    elbayad*) ZSH_THEME=$AKER
           set_fair;;

    *)  echo "Unknown whereabouts!!";;
esac

#autoload -U promptinit; promptinit
#prompt bart 
#prompt spaceship
#fpath=($fpath "/private/home/elbayadm/.zfunctions")
