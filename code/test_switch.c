#include <stdio.h>
#include <stdint.h>

extern int64_t counter;

int a(){
    return 1337;
}

int b(){
    return 42;
}

int c(){
    return 69;
}

void t(void* args){
    int x = (int) args;
    int sum = 0;

    switch (x)
    {
    case 1:
        sum = a();        

    case 2:
        sum = b();

    case 3:
        sum = c();
    }

}