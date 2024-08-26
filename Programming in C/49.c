#include <stdio.h>
int main()
    {
        int func1(int,int), func2(int,int), func3(int,int), func4(int,int);
        int execute(int x,int y,int(*func)());
        int(*function[4])();
        int a,b,i;
        function[0]= func1;
        function[1]= func2;
        function[2]= func3;
        function[3]= func4;
        a= 10;
        b= 2;
        for( i = 0; i < 4; i++)
            printf("func No.%d= = = > %d\n", i+1, execute(a,b,function[i]));
    }
    execute(int x,int y,int(*func)())
        {
            return((*func)(x,y));
        }
    func1(int x,int y)
        {
            return(x+y);
        }
    func2(int x,int y)
        {
            return(x-y);
        }
    func3(int x,int y)
        {
            return(x*y);
        }
    func4(int x,int y)
        {
            return(x/y);
        }


// P104