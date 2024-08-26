#include <stdio.h>
#include <math.h>
int main()
    {
        float sabc(float x,float y,float z);
        float a,b,c,f;
        printf("请输入三角形三边长：\n");
        scanf("%f,%f,%f",&a,&b,&c);
        if ((a+b>c) && (a+c>b) && (b+c>a))
            {
                f= sabc(a,b,c);
                printf("三角形面积等于：%5.2f\n",f);
            }
        else
            printf("不能构成三角形！\n");
    }
    float sabc(float x,float y, float z)
        {
            float s,h;
            h= 0.5*(x+y+z);
            s= sqrt(h*(h-x)*(h-y)*(h-z));
            return (s);
        }


// 三角形的面积（海伦公式）
// P91