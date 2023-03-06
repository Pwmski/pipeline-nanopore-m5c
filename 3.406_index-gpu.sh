#!/bin/sh

#SBATCH --time=5-00:00:00
#SBATCH --job-name=gpu406index
#SBATCH -p gpu
#SBATCH --gpus=1

#not updated - need to use nanopolish in conda environment
#module load nanopolish

#unzip gz file (force -f for overwriting)
#gzip -d /t1-data/project/Jansenlab/pmikulsk/ont_p13met/407/guppymulti-out/fastqmergedpass/407merged1.fastq.gz

#index the output of the basecaller
nanopolish index -d /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/fast5/fast5multi1/ -s /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/sequencing_summary.txt /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/fastqmergedpass/406merged1.fastq.gz
