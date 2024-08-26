#include <stdio.h>
int main()
    {
        int a[5];
        int i,j=3;
        for ( i = 0; i < 5; i++)
            {
                scanf("%d",&a[i]);
                printf("   %d",a[i]);
            }
        printf("\n");
        for( i=2; i <= 4; i++)
            {
                a[i]=a[i+1];
            }
        for ( i = 0; i <= 3; i++)
            {
                printf("   %d",a[i]);
            }
        return 0;
    }