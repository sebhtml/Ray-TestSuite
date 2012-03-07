rm -rf TestX

mpiexec -n 30 -output-filename TestX \
 ~/Ray \
 -p ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    ~/data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX \
-search DatabaseTest \
-search DatabaseTest-genes \
-with-taxonomy \
 Taxonomy/Genome-to-Taxon.tsv \
 Taxonomy/TreeOfLife-Edges.tsv Taxonomy/Taxon-Names.tsv
