
NSLOTS=24

rm -rf TestX
mpiexec -n $NSLOTS -output-filename TestX \
./Ray \
-p data-for-system-tests/phix/1.fasta \
   data-for-system-tests/phix/2.fasta \
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

echo "PASS"
