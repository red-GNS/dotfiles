alias fs='cd $HOME/work/fairseq_source/fairseq-py-attn2d-oar'
alias t="tail -n1"
alias f="readlink -f"
alias cleantex="rm -f *.synctex.gz *.log *.fdb_latexmk *.fls *.aux *.blg *.out *.snm *.nav *.toc"
cpred() {
    cat $1 | grep -v "P(w)" > $1_clean 
}
alias tout="tail stdout -f"
alias tbest="tail stdout -f | grep best_loss"

alias terr="tail stderr -f"
alias best="cat stdout | grep best_loss"



