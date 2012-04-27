rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
-o TestX \
-search DatabaseTest \
-search DatabaseTest-genes \
-with-taxonomy \
 Taxonomy/Genome-to-Taxon.tsv \
 Taxonomy/TreeOfLife-Edges.tsv Taxonomy/Taxon-Names.tsv
