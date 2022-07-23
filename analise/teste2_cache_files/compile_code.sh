#!/bin/bash
# $1 - path , $2 - src file , $3 - extencion , $4 - number of files

INSTRUMENT_FLAGS= " -ffixed-r15 -I./src -fplugin=./bin/gcc-tally.so -nostdlib -g -W"
MINITHREAD_FLAGS="-L./bin -l:minithread.a"
LINK_FLAGS="-Wl,-R -Wl,. -Wl,--export-dynamic"


gcc -c -fno-pie $INSTRUMENT_FLAGS -fPIC $1/$2.$3

for ((c=1; c<=$4; c++))
do
    
    gcc -shared -fPIC $LINK_FLAGS $MINITHREAD_FLAGS $2.o -o dl/$2_$c.so

    echo $c
done

rm -f $2.$3
