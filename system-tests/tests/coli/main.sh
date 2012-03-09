mpiexec \
-n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray \
-p SRR001665_1.fastq \
   SRR001665_2.fastq \
-p SRR001666_1.fastq \
   SRR001666_2.fastq \
-o $TEST_NAME

ValidateGenomeAssembly.sh Ecoli-k12-mg1655.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
