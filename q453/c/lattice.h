
#define MAX(x, y) (x > y ? x : y)
#define MIN(x, y) (x < y ? x : y)

struct vector{
	int x, y;
};

class lattice {
	int pointsCount, buffer;
	vector size;

public:
	lattice(int, int);
	// ~lattice();

	void printlattice();
	int doesfit(vector, vector);
	int fitcount(vector);
};