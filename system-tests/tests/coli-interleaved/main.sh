mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray \
-i interleaved1.fastq.gz \
-i interleaved2.fastq.gz \
-o $TEST_NAME

ValidateGenomeAssembly.sh Ecoli-k12-mg1655.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
