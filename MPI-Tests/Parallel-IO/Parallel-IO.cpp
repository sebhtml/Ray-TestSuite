/* test some parallel I/O with POSIX calls */
/* author: Sébastien Boisvert */

#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <iostream>
using namespace std;

int main(int argc,char**argv){

	cout<<"Starting main"<<endl;

	MPI_Init(&argc,&argv);

	int rank=-1;
	int size=-1;

	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Comm_size(MPI_COMM_WORLD,&size);

	cout<<"I am rank "<<rank<<endl;

	int tagValue=0;
	int MESSAGE_TAG_WRITE_TO_FILE=tagValue++;
	int bytesPerRank=1024*1024*8;
	char*buffer=(char*)malloc(bytesPerRank*sizeof(char));

	if(rank==0){

		cout<<"Creating file"<<endl;

		FILE*fp=fopen("data.dat","w");

		for(int i=0;i<size;i++){
			int count=fwrite(buffer,1,bytesPerRank,fp);
			count++;
		}

		fclose(fp);

		for(int i=0;i<size;i++){
			MPI_Request request;
			cout<<"MPI_Isend from "<<rank<<" to "<<i<<endl;
			MPI_Isend(NULL,0,MPI_INT,i,MESSAGE_TAG_WRITE_TO_FILE,MPI_COMM_WORLD,&request);
			MPI_Request_free(&request);
		}
	}

	MPI_Barrier(MPI_COMM_WORLD);

	MPI_Status status;
	MPI_Recv(NULL,0,MPI_INT,0,MESSAGE_TAG_WRITE_TO_FILE,MPI_COMM_WORLD,&status);

	cout<<"Rank "<<rank<<" opens file"<<endl;
	FILE*fp=fopen("data.dat","r+");

	uint64_t offset=rank;
	offset*=bytesPerRank;

	int returnValue=fseek(fp,offset,SEEK_SET);
	returnValue++;

	int bytes=0;

	while(bytes<bytesPerRank){
		fwrite(&rank,sizeof(int),1,fp);
		bytes+=sizeof(int);
	}

	fclose(fp);

	free(buffer);
	buffer=NULL;

	MPI_Finalize();

	return 0;
}
