#include <stdio.h>
int main()
    {
        void test();
        int i;
        for ( i = 0; i < 3; i++)
        test();
    }
    void test()
    {
        int a= 0;
        printf("a= %d\n",a);
        a= a+1;
    }


// 编写一个程序，每调一次函数，显示一次自动变量中的内容，然后为其值加1
// P110