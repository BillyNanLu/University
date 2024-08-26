#include <stdio.h>
int main()
    {
        int min(float x,float y);
        float a,b;int c;
        scanf("%f,%f",&a,&b);
        c= min(a,b);
        printf("min is %d",c);
        printf("\n");
    }
    int min(float x,float y)
        {
            float z;
            z= x<y ? x:y;
            return (z);
        }


// P87