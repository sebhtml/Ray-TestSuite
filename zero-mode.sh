#!/bin/bash
# 2M genome with short paired reads including sequencing errors

rm -rf zero

mpiexec -output-filename zero -n $NSLOTS \
./Ray -p strept_200_1.fastq strept_200_2.fastq \
-o zero -bloom-filter-bits 0
