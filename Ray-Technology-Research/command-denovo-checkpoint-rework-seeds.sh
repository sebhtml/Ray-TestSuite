rm -rf TestX

rm -rf CHECK/*Seeds*

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
-read-write-checkpoints CHECK \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX-write-seeds \
