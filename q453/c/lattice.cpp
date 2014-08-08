#include <stdio.h>

#include "lattice.h"

void binary(int n){
	int count = 9;
	while (count--) {
		if (n & 1) printf("1");
		else printf("0");
		n >>= 1;
	}
	printf("\n");
}

/* Constructor for the class */
lattice::lattice(int n=0, int m=0) {
	this->size.x = n;
	this->size.y = m;

	this->buffer = 15;
	this->pointsCount = (n+1) * (m+1);

	printf("Constructed a %dx%d lattice with %d points\n",
		this->size.x, this->size.y, this->pointsCount);
	binary(this->buffer);
}

/* Used to print the lattice */
void lattice::printlattice() {
	printf("\nPrinting lattice \n");
	for(int i=0; i<=this->size.x; i++){
		for(int j=0; j<=this->size.y; j++){
			if(i == 0) printf(".");
			else printf("|");
			if(j != this->size.y) printf("_");
		}
		printf("\n");
	}

	vector size = {1, 1};
	printf("1x1 fits = %d\n", fitcount(size));
}

/* Returns true iff the given rectangle fits in this lattice at a particular
 *  offset */
int lattice::doesfit(vector size, vector offset) {
	return ((size.x + offset.x) <= this->size.x) && \
		((size.y + offset.y) <= this->size.y);
}

/* Returns the number of combinations of the rectangles inside our lattice */
int lattice::fitcount(vector size){
	return MAX((this->size.x - size.x + 1), 0) *
		MAX((this->size.y - size.y + 1), 0);
}