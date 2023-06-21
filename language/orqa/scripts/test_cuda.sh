#!/bin/bash

#SBATCH --partition=gpu-v100
#SBATCH --gres=gpu:1

#SBATCH --mem=1G
#SBATCH --cpus-per-gpu=1
#SBATCH --nodes=1
# time in minutes
#SBATCH --time=60

#SBATCH --output=log/test_cuda.log
#SBATCH --error=log/test_cuda.err

#SBATCH --mail-type=END
#SBATCH --mail-user=elephunker1@gmail.com

# For debug:
scontrol show job $SLURM_JOB_ID

source /home/maghsudi/ekortukov80/.bashrc
conda activate orqa

pwd
python3 test_cuda.py
nvidia-smi
