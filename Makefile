include Makefile.in

.PHONY: all exe clean 

exe: hello.o 
all: exe

# =======

hello.o: omp_hello.cpp 
	$(CPP) $(CPPFLAGS) $^ -o $@ $(LIBS)

# =======

clean:
	rm -f *.o
