rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
-read-write-checkpoints \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX 
