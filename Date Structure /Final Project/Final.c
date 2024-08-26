//编程：输入一个无序的数组（10整数），先升序排序，再用二分法查询数字5是否在该数组中。
#include<stdio.h>
#include<stdlib.h>
int search(int a[],int i,int j,int key)
    {
       int m;
       int flag= 0;
       key= 8;
       if(i >= j) 
            return flag;
       m= (i+j)/2;
       if(a[m] == key)
            {
                flag=1;
                return flag;
            }
       if(a[m] < key) 
            return(search(a,i,m-1,key));
       else 
            return(search(a,m+1,j,key));
    }

int main()
    {
        int a[10],i,j,temp,min;
        int flag=0;
        int key=8;
        printf("请输入十个整数: ");
        for ( i = 0; i < 10; i++)
        {
            scanf(" %d",&a[i]);
        }
        printf("输入的原数组是:");
        for ( i = 0; i < 10; i++)
        {
            printf(" %d",a[i]);
        }
        for ( i = 0; i < 10; i++)
        {
            min= i;
            for ( j = i + 1; j < 10; j++)
            {
                if (a[min] > a[j]) min = j;
            }
            if (min != i)
            {
                temp= a[i];
                a[i]= a[min];
                a[min]= temp;
            }
        }
        printf("\n");
        printf("采用升序排序后的数组是:");
        for ( i = 0; i < 10; i++)
        {
            printf(" %d",a[i]);
        }
        printf("\n");
        printf("经过二分法查找:");
        if (flag==1)
            printf("存在'8'这个数字");
        else 
            printf("不存在'8'这个数字");
        return 0;
    }