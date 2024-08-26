#include <stdio.h>
int main()
    {
        float div(float x,float y);
        float a,b,c;
        scanf("%f,%f",&a,&b);
        c= div(a,b);
        printf("%f\n",c);
    }
    float div(float x, float y)
        {
            float z;
            z= x/y;
            return (z);
        }


// 对被调用函数做声明
// P88