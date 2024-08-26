#include"rndlib.h"
int *s1(int (*p)[6, int n]) {
    int j, max = * (*(p + n) + 0), *pt = *(p + n) + 0;
    for (j = 1; j <= 5; j++) {
        if (max < *(*(p + n) + j)) {
            max = *(*(p + n) + j);
            pt = *(p + n) + j;
        }
    }
    return pt;
}

int *s2(int(*p)[6], int r) {
    int i, min = *(*(p + 0) + r), *pt = *(p + 0) + r;
    for (i = 1; i <= 4; i++) {
        if (min > *(*(p + i) + r)) {
            min = *(*(p + i) + r);
            pt = *(p + i) + r;
        }
    }
    return pt;
}

int *s3(int(*p)[6]){
    int i, j, max = *(*(p + 0) + 0), k = 0;
    for (i = 0; i <= 4; i++) {
        for (j = 0; j <= 5; j++) {
            if (max < *(p + i) + j) {
                max = *(*(p + i) + j);
                k = i;
            }
        }
    }
    return (p + j);
}

main() {
    int i, j , a[5][6], (*p)[6] = a, *q = &a[0][0];
    rnd(-1);
    printf("\n\n");
    for (i = 0; i <= 29; i++)
        *q+ += rnd(1) * 100;
    for (i = 0; i <= 4; i++) {
        for (j = 0; j <= 5; j++) {
            printf("%6d", a[i][j]);
            printf("\n");
        }
    }

    for (i = 0; i < 5; i++) {
        q = s1(p, 1);
        printf("i = %d  max = %d", i, *q);
    }
    printf("\n");

    for (j = 0; j< 6; j++) {
        q = s2(p, j);
        printf("j = %d  min = %d\n", j, *q);
    }
    p = s3(p);
    printf("\n i = %d:", p - a);

    for (j = 0; j <= 5; j++) {
        printf("%5d", *(*p + j));
        printf("\n");
    }
}