#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>

char p[5]={'#','+','-','*','/',};
float cal(float x,float y,int p)
{
	switch(p)
	{
	case 1:
		return x+y;
	case 2:
		return x-y;
	case 3:
		return x*y;
	case 4:
		return x/y;
	}
}

//表达式((AoB)oC)oD
float calculate_model1(float a,float b,float c,float d,int p1,int p2,int p3)
{
	float u1,u2,u3;
	u1=cal(a,b,p1);
	u2=cal(u1,c,p2);
	u3=cal(u2,d,p3);
	return u3;
}

//表达式(AoB)o(CoD)
float calculate_model2(float a,float b,float c,float d,int p1,int p2,int p3)
{
	float u1,u2,u3;
	u1=cal(a,b,p1);
	u2=cal(c,d,p3);
	u3=cal(u1,u2,p2);
	return u3;
}

//表达式Ao(Bo(CoD))
float calculate_model3(float a,float b,float c,float d,int p1,int p2,int p3)
{
	float u1,u2,u3;
	u1=cal(c,d,p3);
	u2=cal(b,u1,p2);
	u3=cal(a,u2,p1);
	return u3;
}

//表达式Ao((BoC)oD)
float calculate_model4(float a,float b,float c,float d,int p1,int p2,int p3)
{
	float u1,u2,u3;
	u1=cal(b,c,p2);
	u2=cal(u1,d,p3);
	u3=cal(a,u2,p1);
	return u3;
}

//表达式(Ao(BoC))oD
float calculate_model5(float a,float b,float c,float d,int p1,int p2,int p3)
{
	float u1,u2,u3;
	u1=cal(b,c,p2);
	u2=cal(a,u1,p1);
	u3=cal(u2,d,p3);
	return u3;
}

int point24(int a,int b,int c,int d)
{
	int p1,p2,p3;
	int flag=0;
	for(p1 = 1; p1 <= 4; p1++)
	{
		for(p2 = 1; p2 <= 4; p2++)
		{
			for(p3 = 1; p3 <= 4; p3++)
			{
				if(calculate_model1(a,b,c,d,p1,p2,p3) == 24)   //((AoB)oC)oD
				{
					printf("      ((%d%c%d)%c%d)%c%d=24\n",a,p[p1],b,p[p2],c,p[p3],d);
					flag=1;
				}
				if(calculate_model2(a,b,c,d,p1,p2,p3) == 24)    //(AoB)o(CoD)
				{
					printf("      (%d%c%d)%c(%d%c%d)=24\n",a,p[p1],b,p[p2],c,p[p3],d);
					flag=1;
				}
				if(calculate_model3(a,b,c,d,p1,p2,p3) == 24)    //Ao(Bo(CoD))
				{
					printf("      %d%c(%d%c(%d%c%d))=24\n",a,p[p1],b,p[p2],c,p[p3],d);
					flag=1;
				}
				if(calculate_model4(a,b,c,d,p1,p2,p3) == 24)    //Ao((BoC)oD)
				{
					printf("      %d%c((%d%c%d)%c%d)=24\n",a,p[p1],b,p[p2],c,p[p3],d);
					flag=1;
				}
				if(calculate_model5(a,b,c,d,p1,p2,p3) == 24)    //(Ao(BoC))oD
				{
					printf("      (%d%c(%d%c%d))%c%d=24\n",a,p[p1],b,p[p2],c,p[p3],d);
					flag=1;
				}
			}
		}
	}
	return flag;
}

int main(void)
    {
        int S[4];//4个1-13的数
        int n;
        float a,b,c,d;
		char end;
		printf("****************** 欢迎来到24点游戏 ***************************************");
		printf("\n");
		printf("                       游戏开始\n");
		printf("***************************************************************************\n");
		printf("\n");
		do
		{
			srand((int)time(NULL));//随机生成4个数
			printf("***** 请注意: 扑克牌J、Q、K、A默认为11、12、13、1,此扑克牌已去大小王! *****");
			printf("\n");
			printf("      随机生成的牌面是: ");
			for(n = 0 ; n < 4 ; n++)
			{
				S[n]=(int)rand()%11+3;//随机数范围1—13
				printf("%d ",S[n]);//输出产生的扑克牌
			}
			printf("\n");
			a= S[0];
			b= S[1];
			c= S[2];
			d= S[3];
			if (point24(a,b,c,d));
			else printf("      这四张牌运算后无法得到24!\n");
			printf("********************* Please press Enter to continue! *********************");
			printf("\n");
			end = getchar();
		} while (end=='\n');
		getchar();
		return 0;
    }