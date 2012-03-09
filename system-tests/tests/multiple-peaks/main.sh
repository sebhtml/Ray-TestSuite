mpiexec  -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray \
-p 1.fasta 2.fasta \
-o $TEST_NAME

ValidateGenomeAssembly.sh Mycoplasma_agalactiae_PG2.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
