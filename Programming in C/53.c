#include <stdio.h>
int main()
    {
        register long sum= 0;
        register int i;
        for ( i = 0; i <= 1000; i++)
            {
                sum= sum+ i;
            }
        printf("sum= %ld\n",sum);
    }


// 应用寄存器变量求和
// P111