#!/bin/bash

rm -rf degree-bug

mpiexec -output-filename degree-bug \
 -n $NSLOTS ~/Ray -p u1.fasta u2.fasta -o degree-bug \
 -bloom-filter-bits 0

