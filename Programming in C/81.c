#include "stdio.h"
int main() {
    static int a[5] = {1, 3, 5, 7, 9};
    int i, *p;
    for (i = 0; i < 5; i++)
        printf("%4d", a[i]);
    putchar('\n');
    for (i = 0; i < 5; i++)
        printf("%4d", *(a + i));
    putchar('\n');
    for (p = a; p < a + 5; p++)
        printf("%4d", *p);
    putchar('\n');
    p = a;
    for (i = 0; i < 5; i++)
        printf("%4d", p[i]);
}