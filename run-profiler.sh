rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-run-profiler \
-with-profiler-details \
