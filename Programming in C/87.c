#include "stdio.h"
int main() {
    char st[20], *ps;
    int i;
    printf("input a string: ");
    ps = st;
    scanf("%s", ps);
    for (i = 0; ps[i] != '\0'; i++) {
        if (ps[i] == 'k') {
            printf("there is a 'k' in the string\n");
            break;
        }
        if (ps[i] == '\0')
            printf("there is no 'k' in the string\n");
    }
}