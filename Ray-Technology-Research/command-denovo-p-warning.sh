# this is a test to generate a warning.
# the symbols [ and ] mean that the two are optional.

rm -rf TestX

mpiexec -n $NSLOTS -output-filename TestX \
 ./Ray \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
   [200 20] \
-o TestX 
