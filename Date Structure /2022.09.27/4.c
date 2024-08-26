#include <stdio.h>
int main()
    {
        double fahr,celsius;
        printf("input fahr: ");
        scanf("%1lf",&fahr);
        celsius = 5.0/9 * (fahr - 32);
        printf("fahr= %f, celsius= %.6f\n",fahr,celsius);
        return (0);
    }