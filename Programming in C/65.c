#include <stdio.h>
int main()
    {
        int i,j,min,t,a[10];
        printf("Please input ten numbers:");
        for ( i = 0; i < 10; i++)
        {
            scanf("%d",&a[i]);
        }
        for ( i = 0; i < 9; i++)
        {
            min= i;
            for ( j = i+1; j < 10; j++)
                if (a[min]> a[j])
                    min= j;
        if (min!= i)
        {
            t= a[i];
            a[i]= a[min];
            a[min]= t;
        }
        }
        for ( i = 0; i < 10; i++)
        {
            printf("%6d",a[i]);
        }
    }


// 对10个数进行从小到大排序
// P132