#include <stdio.h>
int main()
    {
        int a, i, max=0, *p;
        p=&a;
        for ( i = 0; i < 10; i++)
            {
                scanf("%d",p);
                if(*p>max){max=*p;}
            }
        printf("这十个整数的最大值是：%d",max);
        return 0;
    }