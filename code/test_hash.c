
#include<stdio.h>

#include "./../include/minithread_api.h"

const int a = HASH_S("HELLO");

int main(){
    //printf("%d %d\n", HASH_S("hello"), HASH("yoo"));
    printf("%d\n", a);
}
