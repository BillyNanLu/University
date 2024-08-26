#include<stdio.h>
int main()
    {
        int a[11]= {1,5,8,10,13,16,19,30,40,70};
        int n,i,j;
        printf("insert a new number:");
        scanf("%d",&n);
        if( n > a[9])
            a[10]= n;
        else
            {
                for (i = 0; i < 10; i++)
                if( a[i] > n) break;
                for (j = 9; j >= i; j--)
                    {
                        a[j+1]= a[j];
                    }
                a[i]= n;
            }
        for ( i = 0; i < 11; i++)
        printf("%6d",a[i]);
    }


// 有一个已经从小到大排好的数组（设有10个元素）。现输入一个数，要求按原来的规律将它插入到数组中
// P133