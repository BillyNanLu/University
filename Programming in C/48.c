#include <stdio.h>
int main()
    {
        int maxf(int x,int y);
        int minf(int x,int y);
        int fun(int x,int y,int(*p)(int,int));
        int max,min;
        int a,b;
        printf("Please input two numbers: ");
        scanf("%d,%d",&a,&b);
        max= fun(a,b,maxf);
        min= fun(a,b,minf);
        printf("max= %d\n",max);
        printf("min= %d\n",min);
    }
int maxf(int x,int y)
    {
        if(x>y) return(x);
        else return(y);
    }
int minf(int x,int y)
    {
        if(x<y) return(x);
        else return(y);
    }
int fun(int x,int y,int(*p)(int,int))
    {
        int result;
        result= (*p)(x,y);
        return(result);
    }


// 编写一个程序，调用一个多功能函数：最大值函数作为参数时，求出两个数中的较大值；最小值函数作为参数时，求出两个数中的较小值
// P103