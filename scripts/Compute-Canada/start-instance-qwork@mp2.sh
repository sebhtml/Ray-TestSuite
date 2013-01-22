#!/bin/bash
#PBS -N instance-qwork@mp2
#PBS -q qwork@mp2
#PBS -l nodes=1:ppn=1
#PBS -l walltime=1:00:00:00
cd $PBS_O_WORKDIR

sleep 999999999
