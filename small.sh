rm -rf TestX

mpiexec -n 30 -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
-o TestX \
-search DatabaseTest \
-with-phylogeny \
 Taxonomy/Genome-to-Taxon.tsv.1 \
 Taxonomy/TreeOfLife-Edges.tsv Taxonomy/Taxon-Names.tsv
