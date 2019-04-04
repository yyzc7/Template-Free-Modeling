#!/bin/bash -l
#SBATCH -J GenCov
#SBATCH -o GenCov-%j.out
#SBATCH -p Lewis,hpc5
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G
#SBATCH --time 04:00:00
aln_dir=/storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/alignment/
output_folder=/storage/hpc/scratch/zggc9/MollecularModeling/TemplateFreeModel/data/feature
/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/T0866.aln $output_folder/T0866.cov
/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/T0951.aln $output_folder/T0951.cov
/storage/htc/bdm/tianqi/DeepCov/bin/cov21stats $aln_dir/T0954.aln $output_folder/T0954.cov