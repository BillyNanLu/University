#include <stdio.h>
int main()
    {
        int x;
        float y;
        char c;
        printf("Please enter x,y and c:");
        scanf("%d,%f,%c",&x,&y,&c);
        printf("x=%d,y=%5.1f,c=%c\n",x,y,c);
    }