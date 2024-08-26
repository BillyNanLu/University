#include <stdio.h>
#define MAXNUM 100
#define ERROR 0
int m;
typedef struct table
    {
        int data[MAXNUM];
        int length;
    }SQlist;
int insertList(SQlist *q, int x, int i )
    {
        int  j;
        if(q->length>=MAXNUM)  return(ERROR);
        else if((i<1)||(i>q->length))
            return(ERROR);
        else  for(j=q->length;j>=i;j--)
        q->data[j]=q->data[j-1];
        q->data[j]=x; q->length=q->length+1;
        m=q->length;
        return 1;
    }
int main()
    {
        SQlist p={{1,2,3,4,5,6,7,8,9,10},10};
        int y,i,k,y1;
        for( k = 0; k < 10; k++)
            printf("%d\n",p.data[k]);
        printf("p.length=%d\n",p.length);
        scanf("%d%d",&y,&i);
        y1=insertList(&p,y,i);
        for(k=0;k<11;k++)
            printf("%d\n",p.data[k]);
        printf("p.length=%d\n",m);
        printf("%d\n",y1);
    }