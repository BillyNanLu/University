#include<stdio.h>
#include<string.h>
int main(void)
    {
        char c,string[80];
        int num= 0,word= 0;
        int i;
        printf("Please input one string: ");
        gets(string);
        for ( i = 0; (c = string[i]) != '\0'; i++)
            if(c== ' ') word= 0;
            else if (word== 0)
                {
                    word= 1;
                    num++;
                }
        printf("There are %d words in the line.\n",num);
    }


// 输入一行字符，统计其中有多少个单词，单词之间用空格分隔开
// P142