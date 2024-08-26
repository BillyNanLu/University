# include <stdio.h>
int gy(int x, int y) {
    int i;
    for (i = x; i >= 1; i--) {
        if (x % i == 0 && y % i == 0)
            return i;
    }
}

main () {
    int n, m;
    printf("请输入n、m的值");
    scanf("%d%d", &n, &m);
    printf("%d与%d的最大公约数是: %d", n, m, gy(n, m));
}