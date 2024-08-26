#include <stdio.h>
int main()
    {
        int r;
        float area;
        float PI=3.14;
        for ( r = 1; r <= 10; r++)
            {
                area= PI*r*r;
                if (area >= 100.0)
                    {
                        break;
                    }
                printf("area= %f\n",area);
            }
        printf("when break r= %d",r);
        return 0;
    }


// 打印半径为1～10的圆的面积，若圆的面积超过100，则不给予打印
// P80