#include <stdio.h>
int main()
    {
        float average(float array[],int n);
        float av;
        float score[10]= {65.5,78,85,90,56,75,80.5,68,87,82};
        av= average(score,10);
        printf("C语言课程平均成绩为: %5.2f\n",av);
    }
    float average(float array[],int n)
    {
        int i;
        float aver,sum= 0;
        for ( i = 0; i < n; i++)
        {
            sum= sum+ array[i];
        }
        aver= sum/10;
        return(aver);
        
    }


// 求某班10名学生的C语言课程平均成绩
// P94