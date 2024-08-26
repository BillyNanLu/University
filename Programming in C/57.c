#include <stdio.h>
int main()
    {
        float r,l,s,v;
        printf("Please input radius: ");
        scanf("%f",&r);
        l= 2.0 * 3.1415926;
        s= 3.1415926 * r * r;
        v= 4.0/3.0 * 3.1415926 * r * r *r;
        printf("r= %6.2f, l= %6.2f; v= %6.2f\n",r,l,s,v);
    }


// P119