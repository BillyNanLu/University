#include <stdio.h>
int main()
    {
        long power(int x,int n);
        int x,n;
        long y;
        scanf("x= %d,n= %d",&x,&n);
        y= power(x,n);
        printf("%ld\n",y);
    }
    long power(int x,int n)
    {
        long p;
        if(n>0) p= x * power(x,n-1);
        else p= 1;
        return(p);
    }


// 使用递归调用求x^n(x>=0)
// P100