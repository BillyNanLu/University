//编程：输入一个无序的数组（10整数），先升序排序，再用二分法查询数字5是否在该数组中。
#include<stdio.h>
int main()
    {
        int a[10] = {9, 5, 2, 10, 1, 7, 8, 4, 3, 6};
        int i,j,p;
        for(i=0; i<10-1; i++)
        for(j=0; j<10-1-i; j++)
            {
                if(a[j] > a[j+1])
                    {
                        p= a[j];
                        a[j]= a[j+1];
                        a[j+1]= p;
                    }
            }
        for(i=0; i<10; i++)
            {
                printf("%d ", a[i]);
            }
        printf("\n");
        return 0;
    }