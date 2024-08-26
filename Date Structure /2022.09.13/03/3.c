#include <stdio.h>
int main()
    {
        int a, i, max=0;
        for(i=0; i<10; i++)
            {
                scanf("%d",&a);
                if(a>max){max=a;}
            }
        printf("这十个整数的最大值是：%d",max);
        return 0;
    }