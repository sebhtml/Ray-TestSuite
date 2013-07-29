#!/bin/bash

rm -rf TestX

rm -rf save.ray/*Seeds*
#-write-kmers \

mpiexec -n $NSLOTS \
	-output-filename TestX \
./Ray -k 31 \
-read-write-checkpoints save.ray \
-write-seeds \
-p \
MiSeq_Ecoli_MG1655_110527_R1.fastq \
MiSeq_Ecoli_MG1655_110527_R2.fastq \
-o TestX \
&> TestX.stdout \
