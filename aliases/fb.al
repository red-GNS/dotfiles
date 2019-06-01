# SLURM interactive job:
# Nodes ($1) is the number of nodes you'll be assigned
# Each will have x gpus ($2) (the maximum being 8)
# Time ($3) is the reauested job duration in minutes or in the format H:M:S Time ($3) is the reauested job duration in minutes or in the format H:M:S 
# Check the machine via env | grep SLURM and the GPUs via env | grep CUDA_VISIBLE_DEVICES
# Variables of interest:
# SLURM_NODELIST : Nodes ids
# SLURM_NTASKS : number of running tasks
# SLURMD_NODENAME : the node you're on.
# 
inter () {
srun --nodes=$1 --gres=gpu:$2 --partition=learnfair --time=$3 --pty /bin/bash -l
}

# in this case $5 is a specific command insead of a shell
interc () {
srun --label --nodes=$1 --gres=gpu:$2 --ntasks-per-node=$3 --partition=learnfair --time=$4 $5
}

#alias tdeterm="sshfs zeus:work/attn2d/events/determctrl ~/work/Events/determctrl -o follow_symlinks,auto_cache,reconnect,defer_permissions,noappledouble"

echoport (){
ssh -NfL $1":localhost:"$1 devfair0325
}
alias pi="builtin cd /checkpoint/elbayadm/models/transf_iwslt"

rx (){
    trg=$(echo $1 | sed s/./_/1)
    #echo Renaming" $1 into $trg
    mv $1 $trg
}
