mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-compression/Ray \
  -i strept-interleaved.fasta.bz2 \
-o $TEST_NAME

ValidateGenomeAssembly.sh Streptococcus-pneumoniae-R6.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
