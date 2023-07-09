#!/bin/bash
#PBS -q normal
#PBS -l select=1:ncpus=8:mem=16gb
#PBS -l walltime=00:30:00
#PBS -j oe
#PBS -q normal
#PBS -P personal
cd ${PBS_O_WORKDIR}

module load bwa
bwa mem -t 8 reference/ecoli-rel606.fa SRR2584857.sample.fq > SRR2584857.sample.sam


