#include <stdio.h>
#include <stdint.h>

#include "./../include/minithread.h"
#include "./../include/minithread_api.h"

#include "./../include/graph.h"
#include "./../include/graph_func.h"

#define _POSIX_C_SOURCE 199309L
#include <time.h>

/// Convert seconds to milliseconds
#define SEC_TO_MS(sec) ((sec)*1000)
/// Convert seconds to microseconds
#define SEC_TO_US(sec) ((sec)*1000000)
/// Convert seconds to nanoseconds
#define SEC_TO_NS(sec) ((sec)*1000000000)

/// Convert nanoseconds to seconds
#define NS_TO_SEC(ns)   ((ns)/1000000000)
/// Convert nanoseconds to milliseconds
#define NS_TO_MS(ns)    ((ns)/1000000)
/// Convert nanoseconds to microseconds
#define NS_TO_US(ns)    ((ns)/1000)

/// Get a time stamp in milliseconds.
uint64_t millis()
{
    struct timespec ts;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts);
    uint64_t ms = SEC_TO_MS((uint64_t)ts.tv_sec) + NS_TO_MS((uint64_t)ts.tv_nsec);
    return ms;
}

/// Get a time stamp in microseconds.
uint64_t micros()
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
    uint64_t us = SEC_TO_US((uint64_t)ts.tv_sec) + NS_TO_US((uint64_t)ts.tv_nsec);
    return us;
}

/// Get a time stamp in nanoseconds.
uint64_t nanos()
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC_RAW, &ts);
    uint64_t ns = SEC_TO_NS((uint64_t)ts.tv_sec) + (uint64_t)ts.tv_nsec;
    return ns;
}

int main(int argc, char* argv[]){

    struct minithreadFuncOpt fOpt;
    fOpt.file_name = "random_walk";
    fOpt.func_name = "run_walk";
    fOpt.compiled = 1;

    struct minithreadModuleOpt mOpt;
    mOpt.module_name = "graph";
    mOpt.init = NULL;
    mOpt.init_args = NULL;
    mOpt.clean = NULL;
    mOpt.struct_size = sizeof (struct graph_struct);

    struct minithreadModuleOpt* mArray[1];
    mArray[0] = &mOpt;

    load_graph("./../graph.txt");

    int number_of_threads = atoi(argv[1]);
    int number_of_cycles = 100;
    int number_of_total_cycles = (int)1e9;
    int number_of_metacycles = number_of_total_cycles / (number_of_threads * number_of_cycles);

    Minithread m[number_of_threads];
    
    for(int i = 0; i < number_of_threads; i++){
        m[i] = minithread_init(NULL, 1<<15, NULL, &fOpt, mArray, 1, number_of_cycles);
    }

    uint64_t t1, t2;
    t1 = millis();
    for(int i = 0; i < number_of_metacycles; i++){
        for(int j = 0; j < number_of_threads; j++){ 
            minithread_run_cycle(m[j]);
        }
    }
   t2 = millis();

   printf("time: %ldms\n", t2 - t1);
}
