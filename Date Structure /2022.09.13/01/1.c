#include <stdio.h>
int main()
    {
        int a[10];
        int i,max=0;
        for (i=0; i<10; i++)
            {
                scanf("%d", &a[i]);
                if(max<a[i]){max=a[i];}
            }
        printf("这十个整数的最大值是：%d" ,max);
    }