all: sum_test

sum_test: sum.o main.o
	g++ -o sum_test main.o sum.o

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

main.o: main.cpp sum.h
	g++ -c -o main.o main.cpp

clean:
	rm -f *.o
	rm -f sum_test

