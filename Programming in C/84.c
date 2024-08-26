# include "stdio.h"
int main() {
    int i, j, m, n, max;
    int a[3][4] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    m = 0;
    n = 0;
    max = **a;
    for (i = 0; i < 3; i++) {
        if (i != 0)
            printf("\n");
        for (j = 0; j < 4; j++) {
            printf("%5d", *(*(a + i) + j));
            if (max < *(*(a + j) + j)) {
                max = *(*(a + i) + j);
                m = i;
                n = j;
            }
        }
    }
    printf("\n max is: a[%2d][%2d] = %-5d", m, n, max);
}