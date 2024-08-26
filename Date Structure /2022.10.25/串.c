#include<stdio.h>
#define MAXSIZE 10
typedef struct
{ 
    char ch[MAXSIZE];
    int length;
}SEQSTRING;

int index(SEQSTRING s, SEQSTRING t)
{   
    int i=1,j=1;
    while(i<=s.length&&j<=t.length)
       if(s.ch[i] == t.ch[j])
           {i++;j++;}
       else
           {i=i-j+2;  j=1;}
       if(j>t.length) return i-t.length;
       else return 0;
}

int main(void)
{
    int y;
    SEQSTRING  S1="abcde",S2="abc";
    y=index(S1,S2);
    printf("%d",y);
}
