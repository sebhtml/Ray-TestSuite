#!/bin/bash

rm -rf low

mpiexec -output-filename low \
-n $NSLOTS \
./Ray -p low1.fasta low2.fasta \
-o low

