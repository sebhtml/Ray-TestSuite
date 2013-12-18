#!/bin/bash

module load tools/make/3.82
module load compilers/gcc/4.8.0
module load apps/blcr/0.8.4
module load mpi/openmpi/1.6.4_gcc


commit=$(git log|grep ^commit|head -n1|awk '{print $2}')
version=$commit
release=1


make clean HAVE_LIBZ=y HAVE_LIBBZ2=y 
make -j 8 MAXKMERLENGTH=32 ASSERT=y HAVE_LIBZ=y HAVE_LIBBZ2=y  CXXFLAGS=" -O3 -std=c++98 -Wall -march=native -g" 

prefix=/rap/nne-790-ab/software/nne-790-ab/apps/ray/$version-$release

while test -d $prefix
do
	release=$(($release + 1 ))
	prefix=/rap/nne-790-ab/software/nne-790-ab/apps/ray/$version-$release
done

build=$version-$release
destination=$prefix

mkdir -p $destination/bin

cp Ray $destination/bin
cp k32.sh $destination

modulefile=/rap/nne-790-ab/modulefiles/nne-790-ab/apps/ray/$build
mkdir -p $modulefile
rm -rf $modulefile

cp ~/git-clones/Ray-TestSuite/Build-Scripts/colosse/Template \
 $modulefile

operation="s=version=$version=g"
sed -i $operation $modulefile

operation="s=release=$release=g"
sed -i $operation $modulefile

echo "to use the new module: "
echo ""
echo "module use /rap/nne-790-ab/modulefiles"
echo "module load nne-790-ab/apps/ray/$build"

