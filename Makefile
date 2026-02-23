OBJECTS= ./build/compiler.o ./build/cprocess.o ./build/helpers/buffer.o ./build/helpers/vector.o
INCLUDE= -I./

all: ${OBJECTS}
	gcc main.c ${INCLUDE} ${OBJECTS} -g -o ./main


./build/compiler.o: ./compiler.c 
	gcc ./compiler.c ${INCLUDE} -o ./build/compiler.o -g -c

./build/cprocess.o: ./cprocess.c
	gcc ./cprocess.c ${INCLUDE} -o ./build/cprocess.o -g -c

./build/helpers/buffer.o: ./helpers/buffer.c
	gcc ./helpers/buffer.c ${INCLUDE} -o ./build/helpers/buffer.o -g -c

./build/helpers/vector.o: ./helpers/vector.c
	gcc ./helpers/vector.c ${INCLUDE} -o ./build/helpers/vector.o -g -c

clean:
	rm ./main
	rm -rf ${OBJECTS}
	 
