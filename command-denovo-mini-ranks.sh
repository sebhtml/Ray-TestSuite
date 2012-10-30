rm -rf TestX

mpiexec -n 4 -output-filename TestX \
 ~/Ray -mini-ranks-per-rank 6 \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX 
