
#include <stdio.h>
#include <stdlib.h>

#include <iostream>
using namespace std;

int main(int argc,char**argv){

	if(argc==1){
		cout<<"You must provide a size"<<endl;
		return 1;
	}

	FILE*fp=fopen("expected.dat","w");

	int size=atoi(argv[1]);

	int bytesPerRank=1024*1024*8;

	for(int i=0;i<size;i++){
		int bytes=0;

		while(bytes<bytesPerRank){
			int count=fwrite(&i,1,sizeof(int),fp);
			count++;
			bytes+=sizeof(int);
		}
	}

	fclose(fp);

	return 0;
}
