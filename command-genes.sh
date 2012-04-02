rm -rf TestX

mpiexec -n 30 -output-filename TestX \
 ~/Ray \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-search DatabaseTest-genes \
-one-color-per-file \
-with-taxonomy \
 Taxonomy/Genome-to-Taxon.tsv \
 Taxonomy/TreeOfLife-Edges.tsv Taxonomy/Taxon-Names.tsv
