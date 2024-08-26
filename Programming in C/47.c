#include <stdio.h>
int min(int a,int b)
    {
        if(a<b) return(a);
        else return(b);
    }
int main()
    {
        int(*pmin)(int,int);
        int x,y,z;
        pmin= min;
        printf("Please input two numbers: ");
        scanf("%d,%d",&x,&y);
        z= (*pmin)(x,y);
        printf("minnum= %d\n",z);
    }


// 用指针形式实现调用函数的方法
// P102