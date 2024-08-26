#include<stdio.h>
#include<string.h>
int main(void)
    {
        int k;
        static char st[]= "C language";
        k= strlen(st);
        printf("The length of the string is %d\n",k);
    }


// 测字符串长度函数strlen
// P141