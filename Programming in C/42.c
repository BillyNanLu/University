#include <stdio.h>
int main()
    {
        float * search(float( * pt_row)[3]);
        float score[][3]= {{56,88,78},{89,85,68},{49,86,86},{76,88,76}};
        int i,j;
        float * pointer;
        for ( i = 0; i < 4; i++)
            {
                pointer= search(score+ i);
                if (pointer== * (score+ i))
                    {
                        printf("No. %d score list: ",i+ 1);
                    for( j = 0; j < 3 ; j++)
                        printf("%5.2f\t", * (pointer+ j));
                    printf("\n");
                    }
            } 
    }
    float * search(float( * pt_row)[3])
        {
            int i;
            float * pt_col;
            pt_col= * (pt_row+ 1);
            for ( i = 0; i < 3; i++)
                if(*(*pt_row+ i)< 60)
                    {
                        pt_col= * pt_row;
                        break;
                    }
            return (pt_col);
        }


// 有4名学生，每名学生有3门课的成绩，找出其中至少有一门课程不及格的学生，要求使用指针函数实现。
// P96