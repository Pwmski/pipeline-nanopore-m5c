#!/bin/sh

#SBATCH --time=3-00:00:00
#SBATCH --job-name=406samtools_gpu
#SBATCH -p gpu
#SBATCH --gpus=1

module load samtools

#sam to bam (retaind SQ lines in header)-temp hashed
samtools view -bo /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1.bam /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1.sam

samtools sort /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1.bam -o /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1_sort.bam

samtools index /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1_sort.bam

