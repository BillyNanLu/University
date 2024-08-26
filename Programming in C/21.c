#include <stdio.h>
int main()
    {
        float score;
        char grade;
        printf("Please input score:\n");
        scanf("%f",&score);
        if (score >=90 && score <=100)
        {
            grade='A';
        }
        else if (score >=80 && score <=89)
        {
            grade='B';
        }
        else if (score >=70 && score <=79)
        {
            grade='C';
        }
        else if (score >=60 && score <=69)
        {
            grade='D';
        }
        else if (score >=0 && score <=59)
        {
            grade='E';
        }
        else
            printf("You have entered the wrong score!");
        printf("score=% .1f,grade=%c",score,grade);
        return 0;
    }


// P69