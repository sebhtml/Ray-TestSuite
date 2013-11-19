#!/bin/bash

rm -rf popo8

#-verify-message-integrity \
#-show-communication-events \
ranks=1
miniRanks=3

mpiexec -n $ranks ./Ray -mini-ranks-per-rank $miniRanks -o popo8 \
-test-network-only \
-p data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R1.fastq \
   data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R2.fastq \
