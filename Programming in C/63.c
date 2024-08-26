#include <stdio.h>
#define N 5
int main()
    {
        int a[N],i;
        printf("Please input five numbers:");
        for ( i = 0; i < N; i++)
            scanf("%d",&a[i]);
        for ( i = 0; i < N; i++)
            printf("%d",a[i]);
    }


// 输入一维数组个各元素的值并输出
// P131