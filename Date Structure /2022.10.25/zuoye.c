#include<stdio.h>
int main(void)
    {
        char x;
        char y;
        printf("Please input x and y:");
        scanf("%c,%c",&x,&y);
        if (x == y)
            printf("x = y");
        else
            printf("x ≠ y");
    }