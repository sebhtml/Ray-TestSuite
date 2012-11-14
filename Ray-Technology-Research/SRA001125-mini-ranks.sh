rm -rf Test-mini-ranks

mpiexec -n 4 \
-output-filename Test-mini-ranks \
./Ray \
-mini-ranks-per-ranks 7 \
-k 21 -o Test-mini-ranks \
-p SRR001665_1.fastq \
SRR001665_2.fastq \
-p SRR001666_1.fastq \
SRR001666_2.fastq \

