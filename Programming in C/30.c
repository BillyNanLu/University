#include <stdio.h>
int main()
    {
        int r;
        float area;
        float PI= 3.14;
        for ( r = 0; r <= 5; r++)
            {
                area= PI*r*r;
                if (area< 50)
                    continue;
                printf("area= %f\n",area);
            }
        return 0;    
    }


// 打印半径为1～5的圆的面积，仅打印出半径在1～5之间的面积超过50的圆的面积
// P81