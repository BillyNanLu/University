#include <stdio.h>
void main()
    {
        int a=1,b=2,c=3;
        printf("%d,%d,%d\n",a,b,c);
        printf("%d,%d,%d\n",(a,b,c),b,c);
        a=(c=0,c+5);
        b=c=3,c+8;
        printf("%d,%d,%d\n",a,b,c);
    }