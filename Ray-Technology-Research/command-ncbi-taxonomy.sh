#!/bin/bash

rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-search genomes/RayKmerSearchStuff/NCBI-Bacteria \
-with-taxonomy NCBI-taxonomy/Genome-to-Taxon.tsv \
NCBI-taxonomy/TreeOfLife-Edges.tsv NCBI-taxonomy/Taxon-Names.tsv 

