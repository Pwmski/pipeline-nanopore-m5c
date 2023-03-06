#!/bin/sh

#SBATCH --time=4-00:00:00
#SBATCH --job-name=406minimap2_gpu
#SBATCH -p gpu
#SBATCH --gpus=1

module load minimap2

#map to the genome
minimap2 -a -x map-ont /databank/igenomes/Homo_sapiens/Ensembl/GRCh38/Sequence/WholeGenomeFasta/genome.fasta /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/fastqmergedpass/406merged1.fastq.gz > /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1.sam
