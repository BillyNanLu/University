#include <stdio.h>
#include <math.h>
int main()
    {
        double f1(double x);
        double f2(double x);
        double f3(double x);
        double integral(double(*fun)(double),double a,double b,int n);
        double y1,y2,y3;
        int n= 100;
        y1= integral(f1,0,1.5,n);
        y2= integral(f2,0,2.5,n);
        y3= integral(f3,0,3.14159,n);
        printf("y1= % 7.2f, y2= % 7.2f,y3= % 7.2f\n",y1,y2,y3);
    }
double f1(double x)
    {
        double y;
        y= 1 + x * x;
        return(y);
    }
double f2(double x)
    {
        double y;
        y= 1 + x * x+ x * x * x * x;
        return(y);
    }
double f3(double x)
    {
        double y;
        y= sin(x);
        return(y);
    }
double integral(double(*fun)(double),double a,double b,int n)
    {
        double h,s= 0;
        int i;
        h= (b-a)/n;
        for ( i = 0; i < n ; i++ )
            s= s + (*fun)(a + i * h);
            s= s * h;
        return(s);
    }


// 运算三个定积分
// P124