#PBS -S /bin/bash
#PBS -N RayRay-Bird-999
#PBS -o RayRay-Bird-999.o
#PBS -e RayRay-Bird-999.e
#PBS -A nne-790-ac
#PBS -l walltime=02:00:00:00
#PBS -l qos=SPJ1024
#PBS -l nodes=128:ppn=8

cd $PBS_O_WORKDIR

module load nne-790-ab/ray/last-build

mpiexec -n 1024 Ray Ray-ILMN.conf


