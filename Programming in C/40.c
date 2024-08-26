#include <stdio.h>
int main()
    {
        int exchange(int * x,int * y);
        int a,b;
        printf("Please input two integers:");
        scanf("%d,%d",&a,&b);
        if(a>b) exchange(&a,&b);
        printf("Output the result: %d,%d\n",a,b);
    }
    int exchange(int * x,int * y)
    {
        int temp;
        temp= * x; * x= * y; *y= temp;
        return(temp);
    }


// 两个整数调换，再调用该整数实现两个整数由小到大的排序
// P95