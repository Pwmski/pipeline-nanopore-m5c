# pipeline-nanopore-m5c

1. Basecalling: guppy-gpu, hac-cpg-dam-dcm model
2. Concatenation: cat fastq
3. Index fastq: nanopolish index
4. Mapping: minimap2, hg38 genome
5. Conversion: samtools view, sort, index
6. Methylation calling & wrangling: nanopolish call-methylation, awk sort, filter

Global installation on HPC: guppy-gpu, cat, minimap2, samtools

Local installation on HPC in own conda environment: nanopolish

Pawel Mikulski, PhD
University of Oxford

