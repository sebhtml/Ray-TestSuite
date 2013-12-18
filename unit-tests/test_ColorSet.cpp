
#include <code/Searcher/ColorSet.h>

#include <stdlib.h>
#include <assert.h>

int main(int argc, char** argv) {

	srand(42);

	ColorSet colorSet;

	int samples = 6;

	int objects = 1000000;
	cout << "samples " << samples ;
	cout << " objects " << objects ;
	cout << endl;

	for(int i = 0 ; i < objects ; ++i) {

		int colors = rand() % samples + 1;

		set<PhysicalKmerColor> actualColors;

		while(actualColors.size() != colors) {

			int physicalColor = rand() % samples;

			actualColors.insert(physicalColor);
		}

		VirtualKmerColorHandle virtualColor = colorSet.findVirtualColor(&actualColors);

		colorSet.incrementReferences(virtualColor);

		if(i % 100000 == 0)
			cout << "Print " << i << endl;
	}

	int virtualColors = colorSet.getTotalNumberOfVirtualColors();

	VirtualKmerColorHandle iterator = 0;

	cout << "virtualColors " << virtualColors << endl;

	uint64_t sum = 0;

	while(iterator < virtualColors) {

		uint64_t hits = colorSet.getNumberOfReferences(iterator);
	
		sum += hits;

		iterator++;
	}

	cout << "sum " << sum << endl;
	assert(objects == sum);
}
