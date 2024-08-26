#include <stdio.h>
#define LETTER 1
int main()
    {
        char str[20]= "C Language",c;
        int i;
        i= 0;
        while ((c= str[i])!='\0')
            {
                i++;
                # if Letter
                if( c >= 'a' && c <= 'z')
                c= c- 32;
                #else
                if( c >= 'A' && c <= 'Z')
                c= c+ 32;
                # endif
                printf("%c",c);
            }
    }


// 输入一行字母字符，根据需要设置条件编译，使之将字母全改为大写输出，或全改为小写输出
// P121