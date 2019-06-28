# Safety first
alias cp='cp -i'
alias mv='mv -i'
#alias rm='rm -i'

# Colorize output
if [[ `uname` == Darwin ]]; then
  alias dircolors='gdircolors'
  alias ls='gls --color=auto'
else
  alias ls='ls --color=auto'
fi

# Colorize output and some exclusions

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Aliases and functions ( common to all servers)
alias wnvia='watch -n30 -c gpustat --color'
alias c='clear'
alias chr='google-chrome-stable'
alias src='source ~/.zshrc'
alias whereami='echo $HOST$HOSTNAME'
alias l='ls -atrlh'
alias cf="cd ~/.config"

# Zip folder
zipf () { zip -r "$1".zip "$1" ; }
zssh () { ssh -Y "$1" -t zsh }
lssh () {ssh elbayadm@"$1".ligone -t zsh}
cd() { builtin cd "$@"; ls; }  # Always list directory contents upon 'cd'
ccd() { builtin cd }
cpf() {cp $1 "fncnn6_reset_"$1}
trim(){
    convert $1 -flatten -fuzz 1% -trim +repage $2
}
transparent(){
    convert $1 -transparent white $2
}

extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}
clear_paths(){
    unset PATH
    unset LIBRARY_PATH
    unset LD_LIBRARY_PATH
    unset C_INCLUDE_PATH
    unset CPLUS_INCLUDE_PATH
}


alias cleantex='rm *.fls *.synctex.gz *.log *.fdb_latexmk *.aux'
