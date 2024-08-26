#include<stdio.h>
int main()
    {
        int a[11]= {1,5,8,10,13,16,19,30,40,70};
        int temp1,temp2,n,i,j;
        for ( i = 0; i < 10; i++)
            printf("% d",&a[i]);
        printf("\n");
        printf("insert a new number:");
        scanf("%d",&n);
        if(n > a[9])
            a[10]= n;
        else
            {
                for ( i = 0; i < 10; i++)
                    {
                        if (a[i]>n)
                            {
                                temp1= a[i];
                                a[i]= n;
                                for ( j = i+1; j < 11; j++)
                                    {
                                        temp2= a[j];
                                        a[j]= temp1;
                                        temp1= temp2;
                                    }
                            break;
                            }
                    }
            }
            for ( i = 0; i < 11; i++)
            {
                printf("%6d",a[i]);
            }    
    }


// 有一个已经从小到大排好序的数组（设有10个元素）。现输入一个数，要求按原来的规律将它插入到数组中
// P134