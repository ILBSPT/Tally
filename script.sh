#!/bin/bash
# $1- func name
INSTRUMENT_FLAGS="-ffixed-r15 -I./../src -fplugin=./../bin/gcc-tally.so -nostdlib -g -W"
MINITHREAD_FLAGS="-L./../bin -l:minithread.a"
LINK_FLAGS="-Wl,-R -Wl,. -Wl,--export-dynamic"

#echo "path"
#pwd

#echo "compiling with"
#if ! [ -f "./../dl/$1.so" ]; then
gcc -fno-pie $INSTRUMENT_FLAGS -fPIC -save-temps -shared -fPIC $LINK_FLAGS $MINITHREAD_FLAGS ./../code/$1.c -o ./../dl/$1.so

#echo "end loading"