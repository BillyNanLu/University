#include <stdio.h>
int main()
    {
        int n,i;
        long int s;
        printf("Please input n(n>=0):");
        scanf("%d",&n);
        if (n>=0)
            {
                s=1;
                if(n>0)
                    {
                        i=1;
                        while (i<n)
                            {
                                s*=i;
                                i++;
                            }
                    }
                printf("%d!=%1d\n",n,s);
            }
        else
            printf("Invalid input!");
        return 0;
    }


// 用while语句求n！的值
// n!=n*(n-1)*(n-2)*···*2*1

// P74