#!/bin/bash

rm -rf TestX

#-search DatabaseTest-genes \

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-search DatabaseTest \
-with-taxonomy \
 Taxonomy/Genome-to-Taxon.tsv \
 Taxonomy/TreeOfLife-Edges.tsv Taxonomy/Taxon-Names.tsv
