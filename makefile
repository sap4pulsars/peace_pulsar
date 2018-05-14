
#Make directory
vpath %.h ./src/SEDG ./src
vpath %.cpp ./src/SEDG ./src/ 
vpath %.o ./bin/
vpath %.exe ./bin/
.SUFFIXES:
# compiler
CC=gcc
CXX=g++
FC=g77
BIN=./bin/
CFLAGS = -Wall -O2   -I/usr/local/pgplot 

CFLAGS_DEBUG = -Wall -g -pg

CPPFLAGS= $(CFLAGS)

LFLAGS = -O3 -lpthread \
		-L/usr/local/pgplot -L/usr/X11/lib \
		 -lgsl -lgslcblas \
-lcpgplot -lpgplot -lz -lpng -lrt -lgfortran -lX11

objects = se_advf.o se_aint.o se_elem.o se_basic.o \
se_trian.o se_crsco.o se_equ.o se_fft.o se_fman.o se_int.o se_mat.o \
se_ran.o se_rk4.o se_sequ.o se_slfco.o se_sort.o se_stepi.o se_untcnv.o \
se_nlis.o se_ind.o se_fms.o \
se_stat.o se_sig.o se_vecb.o se_tim.o se_stac.o se_cgeo.o se_cmd.o 


bins= buildbird.exe rmean.exe compfd.exe dumpfd.exe pngana.exe pltpfd.exe autos2.exe 

sample : $(objects) $(bins)
#Building rules

$(objects) : %.o : %.cpp
	$(CXX) -c $< -o $@ $(CPPFLAGS)

$(bins) : %.exe: %.o $(objects)
	$(CXX) $^ -o $(BIN)$@  $(LFLAGS) 

%.o:%.cpp
	$(CXX) -c $< -o $@ $(CPPFLAGS)

clean:
	-rm *.o
