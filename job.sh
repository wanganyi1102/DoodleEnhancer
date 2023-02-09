#!/bin/bash

#SBATCH --partition=SCSEGPU_UG
#SBATCH --qos=normal 
#SBATCH --job-name=syn2real0
#SBATCH --gres=gpu:1
#SBATCH --mem=8G
#SBATCH --output=output_syn2real0.out
#SBATCH --error=error_syn2real0.err

module load anaconda
source activate synthetic2real2
python train.py --name giraffe_wsupervised --model wsupervised --img_source_file ./dataset/DoodleEnhance/trainSYN.txt --img_target_file ./dataset/DoodleEnhance/train.txt --shuffle --flip --rotation --gpu_ids -1