#include <stdio.h>
int main()
    {
        int max(int x,int y,int z);
        int a,b,c,f;
        a= 23,b= 45,c= 88;
        f= max(a,b,c);
        printf("The max value is: %d\n",f);
    }
    int max(int x,int y,int z)
        {
            int m;
            m = x;
            if(m > y) m=y;
            if(z > m) m=z;
            return m;
        }


// 求3个数的最大值
// P92