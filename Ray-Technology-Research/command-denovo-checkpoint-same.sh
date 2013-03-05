rm -rf TestX

mpiexec -n $NSLOTS \
 ./Ray \
-read-write-checkpoints CHECK \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX &> TestX.log
