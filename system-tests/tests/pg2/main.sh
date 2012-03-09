mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-64/Ray \
-p pg2_1.fasta \
   pg2_2.fasta \
-k 70 \
-o $TEST_NAME 

ValidateGenomeAssembly.sh Mycoplasma_agalactiae_PG2.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
