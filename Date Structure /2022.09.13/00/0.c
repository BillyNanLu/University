#include <stdio.h>
int main()
    {
        int a[10];
        int Max = 0;
        for (int i = 0; i < 10; i++) 
            {
                scanf("%d", &a[i]);
            }
        for (int i = 0; i < 10; i++) 
            {
                if(a[i] > Max) 
                {Max = a[i];}
            }
        printf("十个数中最大的是：%d", Max);
            return 0;
    }