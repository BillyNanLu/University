#define _CRT_SECURE_NO_WARNINGS 1
#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>
#include<assert.h>

typedef int STDataType;
typedef struct Stack
{
	STDataType *a;
	int top;
	int capacity;
}ST;

void StackInit(ST *ps)//初始化
{
	ps->a = (STDataType*)malloc(sizeof(STDataType)* 4);//先创建4个STDataType大小的内存
	if (ps->a == NULL)
	{
		printf("malloc fail!\n");
		exit(-1);
	}
	ps->top = 0;//top初始为0时，top指向的就不是栈尾元素，而是栈尾的下一个元素
	ps->capacity = 4;//数组的空间大小为4
}

void StackDestory(ST *ps)//销毁
{
	assert(ps);//判断ps是否为空，如果他为空就说明栈还没有创建，也就不用销毁
	free(ps->a);//释放数组a的空间
	ps->a = NULL;//让指针*a 指向空
	ps->top = ps->capacity = 0;
}

void StackPush(ST *ps, int x)//入栈
{
	assert(ps);
	//满了，得增容
	if (ps->top == ps->capacity)//注意：top从0开始的。并且top指向栈尾元素的下一个地址
	{
		STDataType *tmp= (STDataType*)realloc(ps->a,sizeof(STDataType)*ps->capacity*2);
		//设置tmp，申请空间成功后，将其赋给ps->a
		//如果直接用ps->a，申请内存失败后，ps->a就不对劲了
		if (tmp == NULL)//判断是否申请成功
		{
			printf("realloc fail\n");
			exit(-1);
		}
		else
		{
			ps->a = tmp;
			ps->capacity *= 2;//扩大为原来的2倍
		}
	}
	ps->a[ps->top] = x;
	ps->top++;
}

void StackPop(ST *ps)//出栈
{
	assert(ps);
	assert(ps->top > 0);//判断是否栈空
	ps->top--;
}

STDataType StackTop(ST *ps)//取栈顶元素（并不删除栈顶元素）
{
	assert(ps);
	assert(ps->top > 0);//判断是否栈空
	return ps->a[ps->top-1];
}

int StackSize(ST *ps)//求栈中元素个数
{
	assert(ps);
	return ps->top;
}

bool StackEmpty(ST *ps)//判断是否为空
{
	assert(ps);
	return ps->top == 0;
}
int main()
{
	ST st;
	StackInit(&st);

	StackPush(&st, 1);
	StackPush(&st, 2);
	StackPush(&st, 3);

	printf("%d ", StackTop(&st));
	StackPop(&st);
	//StackTop(&st)和StackPop(&st)是搭配使用的，这样才能模仿出栈的操作特性
	printf("%d ", StackTop(&st));
	StackPop(&st);

	StackPush(&st, 4);
	StackPush(&st, 5);
	StackPush(&st, 6);
	StackPush(&st, 7);
	while (!StackEmpty(&st))
	{
		printf("%d ", StackTop(&st));
		StackPop(&st);
	}
	printf("\n");
	StackDestory(&st);
	return 0;
}
