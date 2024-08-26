#include<stdio.h>
int main()
    {
        int a[3][3],sum=0;
        int i,j;
        printf("Please input matrix element: \n");
        for(i = 0; i < 3; i++)
            for(j = 0; j < 3; j++)
                scanf("%d",&a[i][j]);
        for(i = 0; i < 3; i++)
            {
                for(j = 0; j < 3; j++)
                printf("%d",&a[i][j]);
                printf("\n");
            }
        for ( i = 0; i < 3; i++)
            sum= sum+ a[i][j];
        printf("duijiaoxian he is%6.2d",sum);
    }


// 求一个3x3矩阵对角线元素之和
// P136