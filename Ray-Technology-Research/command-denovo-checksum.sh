rm -rf TestX

    #-show-communication-events \

mpiexec -n $NSLOTS -output-filename TestX \
./Ray \
-verify-message-integrity \
 -p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
    200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX 
