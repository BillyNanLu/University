#include<stdio.h>
int main(void)
    {
        int a[2][3]= {1,2,3,4,5,6};
        int b[3][2];
        int i,j;
        for( i = 0; i < 2; i++)
            for(j = 0; j < 3; j++)
                b[j][i]=a[i][j];
        for ( i = 0; i < 3; i++)
            {
                for( j = 0; j < 2; j++)
                printf("%d",b[i][j]);
                printf("\n");
            }
    }


// 求下列矩阵的转置矩阵
// 1 2 3
// 4 5 6
// P137