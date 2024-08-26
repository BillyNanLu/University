#include <stdio.h>
#include <math.h>
int prime(long);
int main()
    {
        long m,a,b,c;
        printf("输入要验证数的范围: ");
        scanf("%ld",&m);
        for ( a = 6; a <= m; a+=2)
            {
                for ( b = 3; b <= a/2; b+=2)
                if (prime(b)) 
                    {
                        c= a-b;
                        if(prime(c))
                            break;
                    }
                printf("% ld= % ld+ % ld\n",a,b,c);
            }
    }
int prime(long x)
    {
        int flag= 1;
        long i;
        for ( i = 2; i < sqrt(x); i++)
            if (x% i==0)
                {
                    flag= 0;
                    break;
                }
        return(flag);
    }


// 验证哥德巴赫(C.Goldbach)猜想：任何大于6的偶数可表示成两个奇素数之和
// P125