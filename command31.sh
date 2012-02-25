rm -rf TestX31

mpiexec -n 30 -output-filename TestX \
 ~/Ray -k 31 \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX31 \
-search DatabaseTest \
-search DatabaseTest-genes
