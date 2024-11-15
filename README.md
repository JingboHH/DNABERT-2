```bash

ssh login2.alpha.hpc.tu-dresden.de -l

# move documents: 

scp -r @dataport1.hpc.tu-dresden.de:/data/horse/ws/dna_bert_benchmark /home/documents

data path: /data/horse/ws/dna_bert_benchmark/

# load module:

module load release/24.04  GCC/12.3.0  OpenMPI/4.1.5

module load PyTorch/2.1.2

# activate vitual environment

source /data/horse/ws/dna_bert_benchmark/env/dna_bert_env/bin/activate

cd /data/horse/ws/dna_bert_benchmark/DNABERT_fine/DNABERT_2/finetune
sh scripts/run_dnabert2.sh /data/horse/ws/dna_bert_benchmark/dataset

squeue --me

# run batch
sbatch benchmark.sh

# cancel job
scancel

srun --gres=gpu:4 -n 1 -N 1 -c 7 --pty --mem-per-cpu=1600 bash

-n # --ntasks number of tasks
-N # --nodes number of nodes
-c # number of CPUs per task
--mem-per-cpu # mempry per CPU

# read files
nano

# edit files
cat

# run scripts with different kmer
sh scripts/run_nt.sh /data/horse/ws/dna_bert_benchmark/dataset 1

ll | grasp

nvidia-smi

nvidia-smi -a 

watch –n 1 -d nvidia-smi

nvidia-smi -L

```

