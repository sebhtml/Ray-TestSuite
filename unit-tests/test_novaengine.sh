mpicxx  test_novaengine.cpp ../code/SeedExtender/NovaEngine.cpp -O3 -I ../code -o test_nova -I .. \
-I ../RayPlatform ../RayPlatform/*/*.cpp

for i in $(ls NovaEngine)
do
	./test_nova NovaEngine/$i
done
