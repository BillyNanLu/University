#include <stdio.h>
#define N 10
int main() {
    int i, a[N], s2 = 0, n2 = 0;
    printf("请输入10个整数: ");
    for (i = 0; i < 10; i++) {
        if (a[i] % 2 == 0) {
            n2++;
            s2 += a[i];
        }
        printf("偶数为%d个, 平均值为%f\n", n2, s2 * 1.0 / n2);
    }
}