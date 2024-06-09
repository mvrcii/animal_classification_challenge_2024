#!/bin/bash
#SBATCH -p ls6
#SBATCH -J train
#SBATCH --gres=gpu:rtx2080ti:1
#SBATCH -o logs/slurm-%j.out

python3 train.py --data_dir data --model_name efficientnet_b3 --batch_size 32
