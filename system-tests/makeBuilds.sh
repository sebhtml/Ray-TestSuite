# build Ray executables for system tests

source Modules.sh

cd $RAY_TEST_SUITE/system-tests

rm -rf builds
mkdir builds

cd $RAY_SOURCE

for k in 32 64 96 128
do
	echo "$(date) Building k=$k"
	make clean
	make MAXKMERLENGTH=$k  PREFIX=$RAY_TEST_SUITE/system-tests/builds/build-$k ASSERT=y  DEBUG=y
	make install
done

echo "$(date) Building Ray with compression support"
make clean
make PREFIX=$RAY_TEST_SUITE/system-tests/builds/build-compression HAVE_LIBZ=y HAVE_LIBBZ2=y ASSERT=y DEBUG=y
make install

echo "$(date) Building vanilla Ray"
make clean
make MAXKMERLENGTH=32 ASSERT=y DEBUG=y PREFIX=$RAY_TEST_SUITE/system-tests/builds/build-vanilla
make install

make clean

cd $RAY_TEST_SUITE/system-tests

