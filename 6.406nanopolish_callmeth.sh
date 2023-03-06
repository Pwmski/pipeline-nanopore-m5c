#!/bin/sh

#SBATCH --time=14-00:00:00
#SBATCH --job-name=406env-nanopolish_callmeth_gpu
#SBATCH -p gpu
#SBATCH --gpus=1

#call methylation
nanopolish call-methylation -t 8 -r /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/fastqmergedpass/406merged1.fastq.gz -b /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/guppymulti-out/bam/406merged1_sort.bam -g /databank/igenomes/Homo_sapiens/Ensembl/GRCh38/Sequence/WholeGenomeFasta/genome.fasta > /t1-data/project/Jansenlab/pmikulsk/ont_p13met/406/nanopolish-callmeth/406merged1_meth.tsv

#sort & select columns for bedgraph format & remove header
#awk -F'\t' '{print $1,$3,$4,$6}' 406merged1_meth.tsv | tail -n +2 > 406merged1_meth.bedgraph

#select only chr4 (for 4p13 region) aka rows with column1 = 4
#awk -F'\t' '{if ($1 == 4) {print} }' 406merged1_meth.tsv | awk -F'\t' '{print $1,$3,$4,$6}' > 406merged1_meth_chr4.bedgraph

