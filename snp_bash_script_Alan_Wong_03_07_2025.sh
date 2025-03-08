#!/bin/bash

fastqc sampleB_R1.fq.gz
fastqc sampleB_R2.fq.gz

cutadapt -a AGATCGGAAG -A AGATCGGAAG -m 100 -o sampleB_R1.out.fq.gz -p sampleB_R2.out.fq.gz sampleB_R1.fq.gz sampleB_R2.fq.gz

bwa index reference.fa

bwa mem reference.fa sampleB_R1.out.fq.gz -p sampleB_R2.out.fq.gz > sampleB.sam

samtools view -S -b sampleB.sam > sampleB.bam

samtools sort sampleB.bam -o sampleB.sorted.bam

samtools index sampleB.sorted.bam

bcftools mpileup -Ou -f reference.fa sampleB.sorted.bam > sampleB.mpileup

bcftools call -mv -Ob -o variantsB.bcf sampleB.mpileup

bcftools view variantsB.bcf > variantsB.vcf

bcftools stats variantsB.vcf > summaryB.txt

bcftools filter -e 'QUAL<20' -o filtered_by_qual.vcf variantsB.vcf

bcftools filter -e 'DP<10' -o filtered_by_depth.vcf variantsB.vcf

bcftools filter -e 'QUAL<20 || DP<10' -o filtered_variants.vcf variantsB.vcf




