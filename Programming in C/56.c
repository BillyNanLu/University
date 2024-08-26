#include <stdio.h>
#define PAI 3.1415927
#define T(R) 2 * PAI * R
#define S(R) PAI * R * R
int main()
    {
        float r,t,s;
        scanf("%f",&r);
        t= T(r);
        s= S(r);
        printf("%f  %f",t,s);
    }


// 使用带参数的宏。输入圆半径，求其周长和面积并输出
// P118