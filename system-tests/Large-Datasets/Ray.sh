#PBS -S /bin/bash
#PBS -N Bird-1
#PBS -o Bird-1
#PBS -e Bird-1
#PBS -A nne-790-ac
#PBS -l walltime=48:00:00
#PBS -l qos=SPJ1024
#PBS -l nodes=64:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 512 Ray Ray.conf

