#include <stdio.h>
int main()
    {
        char c;
        int letters= 0,spcaces= 0,digits= 0,others= 0;
        printf("Please input some characters:\n");
        while ((c= getchar())!='\n')
            {
                if (c>='a' && c<='z' || c>= 'A' && c<='z')
                    letters++;
                else if(c== ' ')
                    spcaces++;
                else if(c>='0' && c<='9')
                    digits++;
                else
                    others++;
            }
        printf("letters= %d,spaces= %d,digits= %d,others= %d\n",letters,spcaces,digits,others);
        return 0;
    }


// 输入一行字符，分别统计出其中英文字母、空格、数字、和其它字符的个数
// P82