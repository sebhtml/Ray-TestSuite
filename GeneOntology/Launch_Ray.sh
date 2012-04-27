#!/bin/bash

NSLOTS=30
PATH=.:$PATH

rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 Ray \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-search EMBL_CDS_Sequences \
-gene-ontology 000-Ontologies.txt 000-Annotations.txt

