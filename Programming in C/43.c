#include <stdio.h>
long f2(int t,int k);
long f1(int t,int k);
int main()
    {
        long total_sum;
        int n,m;
        scanf("%d,%d",&n,&m);
        printf("Sum of %d powers of integers from 1 to %d= ",n,m);
        total_sum= f1(m,n);
        printf("%ld", total_sum);
        printf("\n");
    }
    long f1(int t,int k)
    {
        long sum=0;
        int i;
        for ( i = 1; i <= t; i++)
            sum= sum+ f2(i,k);
        return(sum);
    }
    long f2(int t,int k)
    {
        int i;
        long power;
        power= t;
        for( i = 1; i < k; i++)
            power= power*t;
        return(power);
    }


// 计算i^n的值
// P97