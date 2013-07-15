#!/bin/bash

rm -rf TestX

mpiexec -n $NSLOTS \
	-output-filename TestX \
./Ray -k 31 \
-p \
MiSeq_Ecoli_MG1655_110527_R1.fastq \
MiSeq_Ecoli_MG1655_110527_R2.fastq \
-o TestX \
&> TestX.stdout \
