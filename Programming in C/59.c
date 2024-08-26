#include <stdio.h>
#include <math.h>
float d;
int main()
    {
        float a,b,c;
        void f1();
        void f2();
        void f3(float v,float w);
        void f4(float u, float v);
        void f5(float u,float v,float w);
        void f6(float u,float v,float w);
        printf("输入方程系数a,b,c: ");
        scanf("%f,%f,%f",&a,&b,&c);
        d= b*b-4*a*c;
            if (a==0)
                if(b==0)
                    if(c==0)f1();
                    else f2();
                else f3(b,c);
            else if(fabs(d)<=1e-6) f4(a,b);
                else if(d>0) f5(a,b,c);
                    else f5(a,b,c);
    }
void f1()
    {printf("方程有无穷多个根\n");}
void f2()
    {printf("方程无解\n");}
void f3(float v,float w)
    {
        float x;
        x= -w/v;
        printf("方程有一个根= %5.2f\n",x);
    }
void f4(float u,float v)
    {
        float x;
        x= -v/(2*u);
        printf("方程有两个相同的实根,x= %5.2f\n",x);
    }
void f5(float u,float v,float w)
    {
        float x1,x2;
        x1= (-v+ sqrt(d))/(2*u);
        x2= (-v- sqrt(d))/(2*u);
        printf("方程有两个不相等的实根:x1= %6.2f,x2= %6.2f\n",x1,x2);
    }
void f6(float u,float v,float w)
    {
        float r,i;
        r= -v/(2*u);
        i= sqrt(-d)/(2*u);
        printf("方程第一个虚根= %6.2f+ %6.2fi\n",r,i);
        printf("方程第二个虚根= %6.2f- %6.2fi\n",r,i);
    }


// 编写求解方程 ax^2+bx+c=0
// P122