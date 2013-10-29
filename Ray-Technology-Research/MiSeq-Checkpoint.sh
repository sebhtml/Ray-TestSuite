#!/bin/bash

rm -rf TestX

rm -rf save.ray/*Checkpoint.Seeds.ray
rm -rf save.ray/*Checkpoint.Extensions.ray
#-write-kmers \

mpiexec -n $NSLOTS \
	-output-filename TestX \
./Ray -k 31 \
-read-write-checkpoints save.ray \
-debug \
-write-seeds \
-p \
MiSeq_Ecoli_MG1655_110527_R1.fastq \
MiSeq_Ecoli_MG1655_110527_R2.fastq \
-o TestX \
&> TestX.stdout \


#-show-communication-events \
#-run-profiler -with-profiler-details \
