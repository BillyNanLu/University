#include <stdio.h>
int main()
    {
        void sum(int m);
        int n=10;
        sum(n);
        printf("n= %d\n",n);
    }
    void sum(int m)
        {
            int i;
            printf("m= %d\n",m);
            for (i= m-1;i>= 1;i--) m= m+ i;
            printf("m= %d\n",m);
        }


// P93