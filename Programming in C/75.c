#include<stdio.h>
#include<string.h>
int main(void)
    {
        char st1[30]= "My name is ";
        char st2[10];
        printf("input your name:");
        gets(st2);
        strcat(st1,st2);
        puts(st1);
    }


//字符串连接函数stract
// P141