#!/bin/sh

#SBATCH --time=5-00:00:00
#SBATCH --job-name=406catfastq
#SBATCH --ntasks=4
#SBATCH --mem=100G

#cat fastq files
cat /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/pass/*fastq.gz > /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/fastqmergedpass/406merged1.fastq.gz