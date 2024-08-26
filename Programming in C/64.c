#include <stdio.h>
#define N 5
int main()
    {
        int a[N]={9,6,5,4,1},i,temp;
        for ( i = 0; i < N; i++)
        {
            printf("%6d",a[i]);
        }
        for ( i = 0; i < N/2; i++)
        {
            temp= a[i];
            a[i]= a[N-i-1];
            a[N-i-1]= temp;
        }
        printf("\n");
        for ( i = 0; i < N; i++)
        {
            printf("%6d",a[i]);
        }
    }


// 将一个数组逆序输出
// P131