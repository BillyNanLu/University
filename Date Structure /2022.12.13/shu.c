#include<stdio.h>
#include<stdlib.h>
int search(int d[],int i,int j, int key)
    {
        int m;
        int flag=0;
        if (i >= j)
            return flag;
        m=(i+j)/2;
        if(d[m]==key)
            {flag= 1; return flag;}
        if(key<d[m])
            return(search(d,i,m-1,key));
        else
            return(search(d,m+1,j,key));
    }

int main()
    {
        int a[10],i,j,t,flag=0;
        for ( i = 0; i < 10; i++)
        {
            scanf("%d",&a[i]);
        }
        printf("输入的原数组是:");
        for ( i = 0; i < 10; i++)
        {
            printf(" %d",a[i]);
        }
        for ( i = 0; i < 9; i++)
        {
            for ( j = 0; j < 10; j++)
            {
                if (a[i]>a[j])
                {
                    t= a[i];
                    a[i]= a[j];
                    a[j]= t;
                }
            }
        }
        printf("\n采用升序排序后的数组是: \n");
        for ( i = 0; i < 10; i++)
        {
            printf(" %d",a[i]);
        }
        search(a,0,9,5);
        if (flag==1)
            {printf("\n存在5这个数字");}
        else
            {printf("\n不存在5这个数字");}
        return 0; 
    }