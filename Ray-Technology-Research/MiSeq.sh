#!/bin/bash

rm -rf TestX

#-machinefile ~/Machines.txt \

mpiexec -n $NSLOTS \
	-output-filename TestX \
./Ray -k 31 \
-p \
MiSeq_Ecoli_MG1655_110527_R1.fastq \
MiSeq_Ecoli_MG1655_110527_R2.fastq \
-write-kmers -write-seeds \
-o TestX \
&> TestX.stdout \
