/*
 	Ray
    Copyright (C) 2010, 2011  Sébastien Boisvert

	http://DeNovoAssembler.SourceForge.Net/

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, version 3 of the License.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You have received a copy of the GNU General Public License
    along with this program (COPYING).  
	see <http://www.gnu.org/licenses/>


*/

#include<BzReader.h>

#include<iostream>
using namespace std;

#include<stdlib.h>

int main(){
	BzReader reader;
	reader.open((char*)"/data/users/sra/SRA001125/sdata/interleaved1.fastq.bz2");
	char line[10000];
	while(NULL!=reader.readLine(line,10000)){
		cout<<"Line= "<<line<<endl;
	}
	return EXIT_SUCCESS;
}
