mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray  \
-p 200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
   200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o $TEST_NAME

ValidateGenomeAssembly.sh Streptococcus-pneumoniae-R6.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
