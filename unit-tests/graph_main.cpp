
#include <RayPlatform/routing/ConnectionGraph.h>

#include <stdlib.h>

int main(int argc,char**argv){

	int index=0;
	index++;

	int n=atoi(argv[index++]);

	string type=argv[index++];

	ConnectionGraph graph;

	int degree=atoi(argv[index++]);

	bool writeFiles=atoi(argv[index++]);

	bool verbosity=true;

	graph.buildGraph(n,type,verbosity,degree);

	if(writeFiles)
		graph.writeFiles("./");

	return 0;
}
