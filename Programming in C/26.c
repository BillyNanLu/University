#include <stdio.h>
int main()
    {
        int i=1,s=0;
        do
            {
                s= s+i;
                i++;
            } while (i<=100);
        printf("s= %d",s);
        return 0;
    }


// 用do-while语句计算1～100的和
// P75