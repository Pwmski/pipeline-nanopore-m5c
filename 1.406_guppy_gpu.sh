#!/bin/sh

#SBATCH --time=7-00:00:00
#SBATCH --job-name=406guppygpu-hac
#SBATCH -p gpu
#SBATCH --gpus=1

module load guppy-gpu/4.2.2
module load cuda/10.1

guppy_basecaller \
    --config dna_r9.4.1_450bps_modbases_dam-dcm-cpg_hac_prom.cfg \
	--qscore_filtering \
	--min_qscore 7 \
	--recursive \
	--compress_fastq \
	-x "cuda:0" \
    -i /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/fast5/fast5multi1/ \
	-s /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/
	
