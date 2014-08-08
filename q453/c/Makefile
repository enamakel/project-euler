all: proj453.o lattice.o
	g++ -Wall proj453.o lattice.o -o proj453

proj453.o: proj453.cpp lattice.h
	g++ -Wall -c proj453.cpp

lattice.o: lattice.cpp lattice.h
	g++ -Wall -c lattice.cpp

clean:
	rm -rf *.o
	rm proj453