# Tally
Tally allows preemptive context switches governed by CPU cycles

How to use
-----------
Add to be instrumented .c files to ./code or files already instrumented by tally as .dl in ./dl 

Cmake builds gcc-tally.cpp plugin and minithread.c to librarys then builds main.c with all the modules (compiling with gcc-tally all files in the modules/instrumented folder) linking minithread and exporting symbols like the label \_minithread\_break.   

run:
	
> cd build
> (cmake .. if new files are in /modules as cmake make file can be outdated)
> cmake --build .
> cd ..
> ./bin/main
