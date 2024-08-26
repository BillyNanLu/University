#include<stdio.h>
#include<stdlib.h>

typedef struct qnode
{ 
    int data;
    struct qnode *next;
}Qnode;

int main(void)
{ 
    Qnode  *p;
    int i;
    initqueue(p);
    scanf("%d",&i);
    enqueue(i,p);
    delqueue(p);
}

void initqueue(Qnode *p)
{
    p=(Qnode *)malloc(sizeof(Qnode));
    p->next=p;
}

void enqueue( int  x, Qnode *rear)
{
    Qnode  *q;
    q=(Qnode *)malloc(sizeof(Qnode));
    q->data=x;
    q->next=rear->next;
    rear->next=q;
    rear=q;
}

void delqueue(Qnode  *rear)
{ 
    Qnode *p;
    Qnode *q;
    if(rear->next!=rear)
    { 
        q=rear->next;
        p=q->next;q->next=p->next;
        if(p==rear)
        {q->next=q;rear=q;}
        free(p);
    }
}