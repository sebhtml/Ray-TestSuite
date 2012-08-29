#!/bin/bash

rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
-o TestX -bloom-filter-bits 0
