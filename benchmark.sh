#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=2000
#SBATCH --ntasks=1             # ...which means 1 tasks in total (see note below)
#SBATCH --gres=gpu:4           # use 4 GPU per node (i.e. use one GPU per task)
#SBATCH --time=5:00:00
#SBATCH --job-name=dnabert2
#SBATCH --mail-type=start,end
#SBATCH --mail-user=@mailbox.tu-dresden.de

srun --gres=gpu:4 -n 1 -N 1 -c 8 --pty --mem-per-cpu=2000 bash

module load release/24.04  GCC/12.3.0  OpenMPI/4.1.5

module load PyTorch/2.1.2

source /data/horse/ws/dna_bert_benchmark/env/dna_bert_env/bin/activate

cd /data/horse/ws/dna_bert_benchmark/DNABERT_fine/DNABERT_2/finetune

sh scripts/run_dnabert2.sh /data/horse/ws/dna_bert_benchmark/dataset
