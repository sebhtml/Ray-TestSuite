/* test some parallel I/O with POSIX calls */
/* author: Sébastien Boisvert */

#include <mpi.h>
#include <stdio.h>
#include <stdint.h>

int main(int argc,char**argv){
	int tagValue=0;
	int MESSAGE_TAG_WRITE_TO_FILE=tagValue++;
	#define BYTES_PER_RANK 1024*1024*8

	char buffer[BYTES_PER_RANK];

	MPI_Init(&argc,&argv);

	int rank=-1;
	int size=-1;

	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Comm_size(MPI_COMM_WORLD,&size);

	if(rank==0){
		FILE*fp=fopen("data.dat","w");

		for(int i=0;i<size;i++){
			int count=fwrite(buffer,1,BYTES_PER_RANK,fp);
			count++;
		}

		fclose(fp);

		for(int i=0;i<size;i++){
			MPI_Request request;
			MPI_Isend(NULL,0,MPI_INT,i,MESSAGE_TAG_WRITE_TO_FILE,MPI_COMM_WORLD,&request);
			MPI_Request_free(&request);
		}
	}

	MPI_Status status;
	MPI_Recv(NULL,0,MPI_INT,0,MESSAGE_TAG_WRITE_TO_FILE,MPI_COMM_WORLD,&status);

	FILE*fp=fopen("data.dat","r+");

	uint64_t offset=rank;
	offset*=BYTES_PER_RANK;

	int returnValue=fseek(fp,offset,SEEK_SET);
	returnValue++;

	int bytes=0;

	while(bytes<BYTES_PER_RANK){
		fwrite(&rank,sizeof(int),1,fp);
		bytes+=sizeof(int);
	}

	fclose(fp);

	MPI_Finalize();

	return 0;
}
