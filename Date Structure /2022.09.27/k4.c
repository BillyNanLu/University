#include<stdio.h>
int main(void)
    {
        int x,y,z;
        printf("Please input x,y:");
        scanf("%d%d",&x,&y);
        if (x>0)
        {
            y= x-1;
            z= 2*x;
        }
        else
        {
            if (y>0)
            {
                z= y;
            }
            else if (y<0)
            {
                z= x;
                y= x+1;
            }
            z= z+1;
        }
        printf("x=%d,y=%d,z=%d",x,y,z);
    }