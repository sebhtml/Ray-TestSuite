#PBS -S /bin/bash
#PBS -N Bird-16
#PBS -o Bird-16.o
#PBS -e Bird-16.e
#PBS -A nne-790-ac
#######PBS -A fsi-440-ab
#PBS -l walltime=05:00:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 Ray Ray-ILMN.conf


