#include <stdio.h>
int main()
    {
        int age(int n);
        printf("The sixth people's age is: %d\n",age(6));
    }
    int age(int n)
    {
        int y;
        if(n==1) y=10;
        else y= age(n-1)+2;
        return(y);
    }


// 有6个人坐在一起，每个人都比前一个人大两岁，第一个人是10岁。请问：第6个人多少岁？
// P101