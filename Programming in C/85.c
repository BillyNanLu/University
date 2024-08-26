# include "stdio.h"
int main() {
    int i, j, m, n, max;
    int a[3][4] = {{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}};
    int (*p)[4];
    p = a;
    max = **p;
    for (i = 0; i < 3; i++) {
        if (i != 0)
            printf("\n");
        for (j = 0; j < 4; j++) {
            printf("%5d", *(*p + j));
            if (max < *(*p + j)) {
                max = *(*p + j);
                m = i;
                n = j;
            }
        }
        p++;
    }
    printf("\nmax is: a[%2d][%2d] = %5d", m, n, max);
}