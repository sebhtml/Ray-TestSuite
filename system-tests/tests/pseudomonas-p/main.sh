mpiexec -n $NSLOTS $RAY_TEST_SUITE/system-tests/builds/build-vanilla/Ray  \
-p Pseud,200b,2x50b,50X_1.fasta Pseud,200b,2x50b,50X_2.fasta \
-o $TEST_NAME

ValidateGenomeAssembly.sh Pseudomonas-aeruginosa-PAO1,-complete-genome.fasta $TEST_NAME/Contigs.fasta $TEST_NAME.Ray
