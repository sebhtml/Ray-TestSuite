
NSLOTS=24

rm -rf TestX
mpiexec -n $NSLOTS -output-filename TestX \
./Ray \
-p data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_1.fasta \
   data-for-system-tests/strept/200xStreptococcus-pneumoniae-R6.fasta_fragments_2.fasta \
-o TestX &> log

if test ! -f TestX/Contigs.fasta
then
	echo "FAIL"
	exit
fi

if test ! -f TestX/Scaffolds.fasta
then
	echo "FAIL"
	exit

fi

if test ! -f TestX/OutputNumbers.txt
then
	echo "FAIL"
	exit
fi

bytes=$(stat -c "%s" TestX/Contigs.fasta)
if test $bytes -gt 2000000
then
	echo "PASS"
	exit
fi

echo "FAIL"
