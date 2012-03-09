mpiexec \
-n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray \
 -p L1_1.fasta L1_2.fasta \
 -p L2_1.fasta L2_2.fasta \
 -p L3_1.fasta L3_2.fasta \
 -o $TEST_NAME 

ValidateGenomeAssembly.sh Ecoli-k12-mg1655.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray

