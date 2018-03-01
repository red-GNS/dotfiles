export SHELL=$(which zsh)
export ZSH=~/.oh-my-zsh
#export LC_ALL="en_US.UTF-8"

COMPLETION_WAITING_DOTS="false"
plugins=(vim)
plugins+=(python)
plugins+=(git)
# plugins+=(vi-mode)

PASCAL="gentoo"
INRIA="dieter"
EDGAR="gallois"
GPU="gentoo"
RED="avit"
LIG="avit"

set_inria (){
    source ~/.inria/.zshrc
    }

set_redgns (){
    source ~/.red/.zshrc
    plugins+=(tmux)
    }

set_lig (){
    source ~/.lig/.zshrc
    plugins+=(tmux)
    }


case ${HOST:r:r} in 
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
    *)  echo "Unknown whereabouts!!";;
esac

source $ZSH/oh-my-zsh.sh
source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#if [[ $(tmux -V | cut -c 6-8) -ge 2.1 ]];then
    #export MOUSE="mouse";
#else
    #export MOUSE="mode-mouse";
#fi
#bindkey -v
#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward

#function zle-line-init zle-keymap-select {
    #VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    #zle reset-prompt
#}

#zle -N zle-line-init
#zle -N zle-keymap-select
#export KEYTIMEOUT=1

