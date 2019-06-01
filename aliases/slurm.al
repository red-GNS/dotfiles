# edit this file
alias aa="vi /private/home/elbayadm/.dotfiles/aliases/fb.al"
# Checkpoints dir
alias p="cd /checkpoint/elbayadm/"
alias f="cd ~/work/fairseq-attn2d"
alias s="cd ~/work/scripts"


# SLURM interactive job:
inter () {
srun --gres=gpu:$1 --partition=learnfair --time=$2 --pty /bin/bash -l
}

# SLURM utilities
alias killpd="scancel -u $USER -t PD"

killfilter (){
 stats=$(squeue -o "%10i %160j" -u $USER | tail -n +2)
 filtered=$(echo $stats | grep $1)
 jids=$(echo ${filtered} | awk '{print $1}' | tr '\n' ' ')
 exec=0
 read "choice?Are you sure you want to cancel ${jids} (y/n) ? "
 case "$choice" in 
  y|Y ) echo Cancelling $jids && exec=1;;
  n|N ) echo "Nothing was cancelled!";;
  * ) echo "invalid";;
 esac
 if [[ $exec == 1 ]]; then
   command="scancel ${jids}"
   eval $command
 fi
 }

jkill () {
    local stats jid
    stats=$(squeue -o "%10i %160j" -u $USER | tail -n +2) &&
    jid=$(echo "$stats" | tac | fzf -m) &&
    scancel $(echo "$jid" | awk '{print $1}' | tr '\n' ' ') 
}
jerr () {
    local stats jid
    stats=$(squeue -o "%10i %160j" -u $USER | tail -n +2)  &&
    jid=$(echo "$stats" | tac | fzf -m)  &&
    jid=$(echo $jid | awk '{print $1}' | tr '\n' ' ')   &&
    err=$(eval "scontrol show job $jid | grep StdErr | cut -c 11- ")   &&
    dir=$(dirname $err)
    err=$(basename $err)
    cd $dir
    tail -f $err
 }

jout () {
    local stats jid
    stats=$(squeue -o "%10i %160j" -u $USER | tail -n +2)  &&
    jid=$(echo "$stats" | tac | fzf -m)  &&
    jid=$(echo $jid | awk '{print $1}' | tr '\n' ' ')   &&
    err=$(eval "scontrol show job $jid | grep StdOut | cut -c 11- ")   &&
    dir=$(dirname $err)
    err=$(basename $err)
    cd $dir
    tail -f $err
 }

# Jobs stats:
alias mjstats="sacct --format=\"User, State, JobId, JobName, Nodelist, Ntasks, AllocGres, Elapsed, TimeLimit, MaxVMSize, ReqMem\""
alias squ="squeue -o \"%.100j | %.8i | %.10P | %.14b | %.7T | %.10M | %.20R |\" -u $USER"
alias squr="squeue -o \"%.160j | %.8i | %.10P  | %.7T |\" -u $USER | grep RUNNING"
alias squp="squeue -o \"%.160j | %.8i | %.10P  | %.7T |\" -u $USER | grep PENDING"


alias lb="sshare -la |sort -n -k 8 |tail -n +5| head -n 20"
alias watchx='watch -x --color '
alias priority="squeue -p priority --format=\"%.18i %.9P %.8j %.8u %.2t %.10M %.6D %R %k\""
alias sbatch='sbatch --exclude=$(cat ~/exclude.txt)'
srank () {
    sshare -la |sort -n -k 8 |tail -n +5 | grep -n $1
}

alias setjt="jt -t onedork -fs 95 -tfs 11 -nfs 115 -cellw 88% -T -vim"
