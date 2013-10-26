#!/bin/bash

module load nne-790-ab/ray/last-build

cd ~/git-clones/ray

id=$(git log|grep ^commit|head -n1|awk '{print $2}')
builds=/rap/nne-790-ab/software/RayAppBuilds-BleedingEdge/

make clean

make MAXKMERLENGTH=64 ASSERT=y HAVE_LIBZ=y HAVE_LIBBZ2=y -j 10 PREFIX=$builds/$id CXXFLAGS=" -O3 -std=c++98 -Wall -march=native -g" MPI_IO=n
make install

cd $builds
rm last-build
ln -s $id last-build

echo "Ray $id has been installed."
