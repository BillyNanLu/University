#include <stdio.h>
int main()
    {
        int i,n;
        long int s=0;
        printf("Please input n(n>=1):");
        scanf("%d",&n);
        if (n<1)
            {
                printf("Invalid input");
            }
        else
            {
                for(i=1;i<=n;i++)
                    {
                        s=s+i*i;
                    }
                printf("The result is:%1d",s);
            }
        return 0;
    }


// P76