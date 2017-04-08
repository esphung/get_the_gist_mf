run:
	#EXECUTING APPLICATION
	./com.yourexecfilename.app

all: main.o support.o
	# BUILDING PROGRAM EXECUTABLE FILE
    g++ main.o support.o -o com.yourexecfilename.app

main.o: main.cpp support.h
	# BUILD LOCAL DEPENDENCIES
    g++ -I /Users/homeuser/Repositories/model.phungtechnology.pillboxdata/boost_1_63_0 -c main.cpp 

support.o: support.cpp support.h
    g++ -c support.cpp