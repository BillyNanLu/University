#include <stdio.h>
int main()
    {
        int leap;
        int iYear;
        int iMonth;
        int iDay;
        printf("Please input the year number:");
        scanf("%d",&iYear);
        printf("Please input the month number:");
        scanf("%d",&iMonth);
        if((iYear %400==0||(iYear %4==0 && iYear %100!=0))
            leap= 1;
        else
            leap= 0;
        switch (iMonth)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12: iDay=31; break;
                case 4:
                case 6:
                case 9:
                case 11: iDay=30; break;
                case 2: 
                    if(leap==1) iDay=28;
                    else iDay=29;
                    break;
                default: iDay=-1;
            }
        if(iDay==-1)
            printf("Invalid month input! \n");
        else
            printf("%d.%d has%d days.\n",iYear,iMonth,iDay);
    }


// P72