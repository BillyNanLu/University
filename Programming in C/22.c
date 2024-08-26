#include <stdio.h>
int main()
    {
        float score;
        int temp;
        char grade;
        printf("Please input the score: ");
        scanf("%f",&score);
        temp= (int)score/10;
        switch(temp)
            {   
                case 10:
                case 9: grade='A'; break;
                case 8: grade='B'; break;
                case 7: grade='C'; break;
                case 6: grade='D'; break;
                default: grade='E';
            }
        printf("score= % .1f,grade= %c\n",score,grade);
        return 0;
    }


// P71