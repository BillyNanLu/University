#include <stdio.h>
int main()
    {
        int a[10];
        int i,j=3;
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
        printf("\n");
        for( i = 3 ;i <= 8 ; i++)
            {
                a[i] =a[i+1];
            }
        for( i = 0; i <= 7; i++)
            {
                printf("   %d",a[i]);
            }
        return 0;
    }
