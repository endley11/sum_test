all: sum_test1

sum_test1: sum.o sum_test.o
	g++ -o sum_test1 sum.o sum_test.o

sum.o: sum.h sum.cpp
	g++ -c -o sum.o sum.cpp

sum_test.o: sum_test.cpp sum.h
	g++ -c -o sum_test.o sum_test.cpp

clean: 
	rm -f sum_test1 *.o


