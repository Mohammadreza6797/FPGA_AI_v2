COMPILER=
ARCHIVER=
CP=cp
COMPILER_FLAGS=
EXTRA_COMPILER_FLAGS=
LIB=libxil.a
 
RELEASEDIR=../../../lib
INCLUDEDIR=../../../include
INCLUDES=-I./. -I${INCLUDEDIR}
 
INCLUDEFILES = $(wildcard *.h)
LIBSOURCES = $(wildcard *.c)
OUTS = $(wildcard *.o)
OBJECTS = $(addsuffix .o, $(basename $(wildcard *.c)))
ASSEMBLY_OBJECTS = $(addsuffix .o, $(basename $(wildcard *.S)))
 
libs:
	echo "Compiling WeightUpdater..."
	$(COMPILER) $(COMPILER_FLAGS) $(EXTRA_COMPILER_FLAGS) $(INCLUDES) $(LIBSOURCES)
	$(ARCHIVER) -r ${RELEASEDIR}/${LIB} ${OUTS} ${OBJECTS} ${ASSEMBLY_OBJECTS}
	make clean
 
include:
	${CP} $(INCLUDEFILES) $(INCLUDEDIR)
 
clean:
	rm -rf ${OUTS} ${OBJECTS} ${ASSEMBLY_OBJECTS}
