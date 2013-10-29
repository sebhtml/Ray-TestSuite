#include <code/graph/GridTable.h>
#include <code/graph/GridTableIterator.h>

#include <iostream>
using namespace std;

int main(){
	GridTable* a;
	a.constructor();
	for(int i=0;i<10;i++){
		a.insert(i);
	}

	a.insert(9);
	GridTable*Iterator iterator;
	iterator.constructor(&a);
	while(iterator.hasNext()){
		cout<<iterator.next()->m_key<<endl;
	}
	return 0;
}
