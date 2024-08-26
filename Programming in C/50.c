#include <stdio.h>
int a= 50;
static int b= 60;
int main()
    {
        void swap(int x,int y);
        int c= 30,d= 40;
        swap(c,d);
        swap(b,a);
        printf("%d,%d,%d,%d\n",a,b,c,d);
    }
void swap(int x,int y)
    {
        a= x;
        x= y;
        y= a;
    }


// P107