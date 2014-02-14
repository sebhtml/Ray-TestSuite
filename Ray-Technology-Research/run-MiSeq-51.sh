rm -rf TestX

mpiexec -n $NSLOTS \
./Ray -o TestX -k 51 \
 -p \
   data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R1.fastq \
   data-for-system-tests/ecoli-MiSeq/MiSeq_Ecoli_MG1655_110527_R2.fastq \
 &> TestX.stdout
