/* test some parallel I/O with POSIX calls */
/* author: Sébastien Boisvert */

#include <mpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <iostream>
using namespace std;

//#define USE_MPI_IO

int main(int argc,char**argv){

	MPI_Init(&argc,&argv);

	int rank=-1;
	int size=-1;

	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Comm_size(MPI_COMM_WORLD,&size);

	cout<<"I am rank "<<rank;

#ifdef USE_MPI_IO
	cout<<", will use MPI I/O"<<endl;
#else
	cout<<", will use POSIX I/O"<<endl;
#endif

	cout<<endl;

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

	char fileName[]="data.dat";

#ifdef USE_MPI_IO
	MPI_File fp;

// TODO: I am not sure what is the purpose of a MPI_Info object
	MPI_File_open(MPI_COMM_WORLD,fileName,MPI_MODE_RDWR,MPI_INFO_NULL,&fp);
	MPI_Offset offset=rank;
	offset*=bytesPerRank;
	int returnValue=MPI_File_seek(fp,offset,MPI_SEEK_SET);
#else
	FILE*fp=fopen(fileName,"r+");
	uint64_t offset=rank;
	offset*=bytesPerRank;
	int returnValue=fseek(fp,offset,SEEK_SET);
#endif

	if(returnValue!=0){
		cout<<"Rank "<<rank<<" can not open the file."<<endl;
	}

	int bytes=0;

	while(bytes<bytesPerRank){

#ifdef USE_MPI_IO
		MPI_Status writeStatus;
		MPI_File_write(fp,&rank,sizeof(int),MPI_BYTE,&writeStatus);
#else
		int writtenElements=fwrite(&rank,sizeof(int),1,fp);

		if(writtenElements!=1)
			cout<<"Error: incorrect number of written bytes (expected: "<<1<<" actual: "<<writtenElements<<")"<<endl;
#endif

		bytes+=sizeof(int);
	}

#ifdef USE_MPI_IO
	MPI_File_close(&fp);
#else
	fclose(fp);
#endif

	free(buffer);
	buffer=NULL;

	MPI_Finalize();

	return 0;
}
