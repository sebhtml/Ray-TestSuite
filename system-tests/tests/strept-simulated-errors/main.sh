mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray  \
-p strept_200_1.fastq.gz \
   strept_200_2.fastq.gz \
-o $TEST_NAME

ValidateGenomeAssembly.sh Streptococcus-pneumoniae-R6.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
