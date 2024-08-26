#include <stdio.h>
int main()
    {
        int a[10];
        int i;
        int j=3;
        for ( i = 0; i < 8; i++)
            {
                scanf("%d",&a[i]);
                printf("   %d",a[i]);
            }
        printf("\n");
        for ( i = 7; i >= j; i--)
            {
                a[i+1]= a[i];
            }
        a[j]= 90;
        for ( i = 0; i <= 9; i++)
            {
                printf("   %d",a[i]);
            }
        return 0;
    } 