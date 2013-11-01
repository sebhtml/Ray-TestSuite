#!/bin/bash

module load gcc/4.7.0
module load openmpi_gcc64/1.6.4

CPUS=$(grep "model name" /proc/cpuinfo |wc -l)

Q="@"

make clean ASSERT=y MAXKMERLENGTH=32 HAVE_LIBZ=y HAVE_LIBBZ2=y -j $CPUS PREFIX=$prefix CXXFLAGS=" -O3 -std=c++98 -Wall -march=native -g" Q=$Q

make ASSERT=y MAXKMERLENGTH=32 HAVE_LIBZ=y HAVE_LIBBZ2=y -j $CPUS PREFIX=$prefix CXXFLAGS=" -O3 -std=c++98 -Wall -march=native -g" Q=$Q

commit=$(git log|grep ^commit | head -n1 | awk '{print $2}')

version=$commit
release=1

prefix=/mnt/lustre03/corbeil/corbeil_group/nne-790-ab/software/nne-790-ab/ray/$version-$release

while test -d $prefix
do
	release=$(($release + 1))
	prefix=/mnt/lustre03/corbeil/corbeil_group/nne-790-ab/software/nne-790-ab/ray/$version-$release
done

echo "Will produce release $release"

mkdir -p $prefix/bin
cp Ray $prefix/bin

module=/mnt/lustre03/corbeil/corbeil_group/nne-790-ab/modulefiles/nne-790-ab/ray/$version-$release

cp ~/git-clones/Ray-TestSuite/Build-Scripts/mp2/Template \
$module

expression="s/version/$version/g"
sed -i "$expression" $module

expression="s/release/$release/g"
sed -i "$expression" $module

echo "To use the new module:"
echo ""
echo "module use /mnt/lustre03/corbeil/corbeil_group/nne-790-ab/modulefiles/"
echo "module load nne-790-ab/ray/$version-$release"
