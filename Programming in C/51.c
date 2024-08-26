// 文件file1.c中的内容为：*

#include <stdio.h>
int a= 6;
char c1= 'a', c2= 'b';
int main()
    {
        void f1();
        extern int b;
        int c;
        char c2='B';
        c= a/b;
        printf("%c\n",c1- 32);
        printf("%c\n",c2);
        printf("%d/%d= %d\n",a,b,c);
        f1();
    }
int b=2;

// 文件file2.c的内容为：*

extern int a;
void f1()
    {
        int m,n= 1;
        for ( m = 1; m <= a; m++)
        n= n* m;
        printf("%d! = %d\n",a,n);
    }


// P108