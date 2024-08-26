#include <stdio.h>
int main()
    {
        long fac(int n);
        int n;
        long y;
        printf("\ninput a integer number:");
        scanf("%d",&n);
        y= fac(n);
        printf("%d! = %d",n,y);
    }
    long fac(int n)
    {
        long m;
        if(n<0) printf("n<0,input error");
        else if (n==0 || n==1) m=1;
        else m= n* fac(n-1);
        return(m);
    }


// 用递归法计算n!
// P99