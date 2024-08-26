#include<stdio.h>
int main()
    {
        int a[10];
        int i,m,n;
        printf("Input ten numbers: ");
        for(i=0;i<10;i++)
        scanf("%d",&a[i]);
        printf("\n");
        for(m=0;m<9;m++) /*进行9次循环 实现9趟比较*/
        for(i=0;i<9-m;i++) /*在每一趟中进行9-m次比较*/
        if(a[i]>a[i+1]) /*相邻两个数比较*/
            {
                n=a[i];
                a[i]=a[i+1];
                a[i+1]=n;
            }
        printf("升序排列结果为: ");
        for(i=0;i<10;i++)
            printf(" %d",a[i]);
        printf("\n");
        for ( i = 0; i < 10; i++)
        if (a[i]==2)
            {
                printf("1");
                return 0;
            }
        else
            printf("0");
    }
