#include <stdio.h>
int main()
    {
        int a[10], *p;
        int i, max=0;
        p=a;
        for(;p<a+10;p++)
            {
               scanf("%d",p);
               if(max<a[i]){max=*p;} 
            }
        printf("这十个整数的最大值是：%d",max);
    }