#!/bin/bash
#SBATCH -J RAXML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=ALL 
#SBATCH --mail-user=tdeibert@uwyo.edu
#SBATCH --account=inbre-train

#SBATCH --ntasks-per-node=8
#SBATCH partition=inv-inbre
#each echo commands is jst to make sure that all of your code is running properly
echo "Starting raxmlHPC run at $(date)"

module load swset gcc raxml 

#this next bit of code on one line 

raxmlHPC-PTHREADS-AVX -T 8  -f a -m GTRGAMMA -p 618 -N 2  -x 309 -s Allbears.aln -n AllBears -w /project/inbre-train/inbre015/molb4485/deibert_Phylo/AllBears -o GiantPanda

echo "RAxML has finished at $(date)"
