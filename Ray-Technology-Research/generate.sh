
for i in $(seq 1 40000)
do
	echo ">$i"

	for j in $(seq 1 2000)
	do
		echo -n A
	done

	echo ""
done > long.fasta
