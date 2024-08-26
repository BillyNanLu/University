#include "stdio.h"
#include "stdlib.h"
#define MAXSIZE  7
typedef  int SElemtype;
typedef  int Status;
#define  OK 1
#define ERROR  0
typedef struct
{
  SElemtype data[MAXSIZE];
  int top;
}Stack;
void Stack_Init(Stack *s,int n)
{	int i;
	s->top=n-1;
	for(i=0;i<n;i++)
	{
		s->data[i]=i+10;
		printf("%6d",s->data[i]);
	}
	printf("\n");
}
Status Push(Stack *s,SElemtype e)
{
	if(s->top==MAXSIZE-1) return ERROR;
	s->data[++(s->top)]=e;
	return OK;
}
Status Poll(Stack *s,SElemtype *e)
{
	if(s->top==-1)  return ERROR;
	*e=s->data[(s->top)--];
	return OK;
}
int main(int argc, char *argv[]) 
{
  SElemtype e;
  Stack s;
  Stack_Init(&s,5);
  Push(&s,100);
  for(int i=0;i<6;i++)
  {
  	printf("%6d",s.data[i]);
  }
  //Poll(&s,&e);
  //printf("%6d",e);
  	return 0;
}
