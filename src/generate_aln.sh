#!/bin/bash -l
#SBATCH -J GenAln
#SBATCH -o GenAln-%j.out
#SBATCH -p Lewis,hpc5
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -t 1-00:00:00
#SBATCH --mem 20G
export HHLIB=/storage/htc/bdm/tools/hhsuite-2.0.16-linux-x86_64/lib/hh
PATH=$PATH:/storage/htc/bdm/tools/hhsuite-2.0.16-linux-x86_64/bin:$HHLIB/scripts
perl /storage/htc/bdm/DNCON4/feature/aln/scripts/generate_hhjack_hhmsearch3.pl /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/fasta/T0866.fasta /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/alignment/T0866
perl /storage/htc/bdm/DNCON4/feature/aln/scripts/generate_hhjack_hhmsearch3.pl /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/fasta/T0951.fasta /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/alignment/T0951
perl /storage/htc/bdm/DNCON4/feature/aln/scripts/generate_hhjack_hhmsearch3.pl /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/fasta/T0954.fasta /storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/alignment/T0954
