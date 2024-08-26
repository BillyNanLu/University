#include <stdio.h>
int main()
    {
        int a,b,c,min;
        printf("Please input a,b,c:");
        scanf("%d%d%d",&a,&b,&c);
        if (a<b)
            {
                min=a;
            }
        else
            {
                min=b;
            }
        if (c<min)
            {
                min=c;
            }
        printf("The result is:%d\n",min);
        return 0;
    }


// 输入三个数，输出其最小的数
// P67