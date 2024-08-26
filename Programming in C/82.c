#include "stdio.h"
int main() {
    int a[5], k, *p;
    p = a;
    for (k = 0; k < 5; k++)
        scanf("%d", p++);
    p = a;
    for (k = 0; k < 5; k++)
        printf("%6d", *(p++));
}