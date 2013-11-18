#!/bin/bash

rm -rf popo8

mpiexec -n 1 ./Ray -mini-ranks-per-rank 8 -o popo8 \
-p data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R1.fastq \
   data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R2.fastq \
