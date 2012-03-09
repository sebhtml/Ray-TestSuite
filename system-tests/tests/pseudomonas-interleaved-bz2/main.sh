mpiexec -n $NSLOTS  $RAY_TEST_SUITE/system-tests/builds/build-compression/Ray  \
-i Pseudo-inter.fasta.bz2 -o $TEST_NAME

ValidateGenomeAssembly.sh Pseudomonas-aeruginosa-PAO1\,-complete-genome.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
