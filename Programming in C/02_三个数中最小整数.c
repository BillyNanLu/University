#include <stdio.h>
int main() {
    int a, b, c, min;
    printf("请输入三个数");
    scanf("%d%d%d", &a, &b, &c);
    min = a;
    if (min > b)
        min = b;
    if (min > c)
        min = c;
    printf("%d, %d, %d中最小的数为%d", a, b, c, min);
}