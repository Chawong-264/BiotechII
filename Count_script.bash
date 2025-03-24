#!/bin/bash

NAMES="SAMPLE1 SAMPLE2"

for SAMPLE in $NAMES; do
    hisat2 -p 8 --no-unal --dta \
    -x /home/chawo/rnaseq_class/RNAseq_data/indexes/chrX_tran \
    -1 /home/chawo/rnaseq_class/RNAseq_data/samples/${SAMPLE}_R1.fastq.gz \
    -2 /home/chawo/rnaseq_class/RNAseq_data/samples/${SAMPLE}_R2.fastq.gz \
    -S /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.sam \
    --summary-file /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.txt

    samtools sort -@ 8 -o /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.sorted.bam /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.sam
    samtools index /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.sorted.bam

    htseq-count \
    -i gene_id \
    -f bam \
    -t exon \
    -m intersection-nonempty \
    -s no /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.sorted.bam /home/chawo/rnaseq_class/RNAseq_data/genes/chrX.gtf > /home/chawo/rnaseq_class/RNAseq_data/${SAMPLE}.count.txt

done
