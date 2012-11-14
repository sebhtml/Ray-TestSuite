#!/bin/bash

rm -rf orion

mpiexec -n $NSLOTS -output-filename orion \
./Ray \
-o orion \
-p \
strept_200_1.fastq \
strept_200_2.fastq \
-search DatabaseTest-strept \

