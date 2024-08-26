#include <stdio.h>
int main()
    {
        float peven(),podd(),dcall();
        float sum;
        int n;
        printf("Please input n: ");
        scanf("%d",&n);
        if( n < 0)
            printf("输入的数据是错误的！\n");
        if( n%2==0)
            {
                printf("Eeven= ");
                sum= dcall(peven,n);
            }
        else
            {
                printf("Odd= ");
                sum= dcall(podd,n);
            }
        printf("%7.4f\n",sum);
    }

float peven(int n)
    {
        float s;
        int i;
        s= 1;
        for ( i = 2; i <= n; i=i+2)
            s= s+1/(float)i;
        return(s);
    }

float podd(n)
int n;
{
    float s;
    int i;
    s= 0;
    for ( i = 1; i <= n; i=i+2)
        s= s+1/(float)i;
    return(s);
}
float dcall(fp,n)
float(*fp)();
int n;
{
    float s;
    s= (*fp)(n);
    return(s);
}


// 编写一个函数，输入n为偶数时，调用函数求sum=1+1/2+1/4+···+1/n; 当输入n为奇数时，调用函数求sum=1/1+1/3+···+1/n
// P126