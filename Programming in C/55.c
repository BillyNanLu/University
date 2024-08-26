#include <stdio.h>
int main()
    {
        int f1(int x);
        int m= 4,i;
        int sum= 0;
        for ( i = 1; i <= m; i++)
            {
                sum= sum+ f1(i);
                printf("sum= %d\n",sum);
            }
    }
int f1(int x)
    {
        static int a= 1;
        a= a * x;
        return(a);
    }


//P112