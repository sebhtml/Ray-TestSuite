rm -rf TestX33

mpiexec -n 30 -output-filename TestX \
 ~/Ray -k 33 \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX33 \
-search DatabaseTest \
-search DatabaseTest-genes
