#out=/home/boiseb01/RayKmerSearchDevel/6/4/4/33131/13211/JOE

#out=JOE

out=/home/boiseb01/JOE

rm -rf $out

mpiexec -n 28 -output-filename TestX \
 ~/Ray \
 -p _1.fasta _2.fasta \
-o $out 
