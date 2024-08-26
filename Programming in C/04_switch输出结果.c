#include <stdio.h>
int main() {
    int x = 3;
    switch (x)
    {
        case 1:;
        case 2: printf("x < 3\n");
                break;
        case 3: printf("x = 3\n");
                break;
        case 4:;
        case 5: printf("x > 3\n");
                break;
        default: printf("X unknow\n");
            break;
    }
}