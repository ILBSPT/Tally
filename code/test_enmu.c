#include <stdio.h>

typedef enum{
    a = 0,
    b = 0,
    c = 1
} tt;

void f(tt p){
    switch(p){
        case a:
            printf("a");
            break;
        case b:
            printf("b");
            break;
        case c:
            printf("c");
            break;
        default:
            printf("default");
    }
}

int main(){
    f(a);
    f(b);
    f(c);
}