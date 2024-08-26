#include <stdio.h>
int main()
    {
        int a[10];
        int i,j,t;
        printf("Input ten numbers:");
        // scanf("%d",&a[10]);
        for ( i = 0; i < 10; i++)
        scanf("%d",&a[i]);
        {
            for ( j = i+1; j < 10; j++)
            {
                if (a[i]<a[j])
                {
                    t=a[i];
                    a[i]=a[j];
                    a[j]=t;
                }  
            }
        }
        for ( i = 0; i < 10; i++)
            printf("%2d\n",a[i]);
        for ( i = 0; i < 10; i++)
        if (a[i]==2)
        {
            printf("1\n");
            return 0;
        }
        printf("0\n");
    }