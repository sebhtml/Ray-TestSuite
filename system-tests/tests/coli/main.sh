mpiexec \
-n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray \
-p SRR001665_1.fastq.gz \
   SRR001665_2.fastq.gz \
-p SRR001666_1.fastq.gz \
   SRR001666_2.fastq.gz \
-o $TEST_NAME

ValidateGenomeAssembly.sh Ecoli-k12-mg1655.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
