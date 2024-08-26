# include "stdio.h"
void cpystr(char *pss, char *pds) {
    while ((*pds = *pss) != '\0')
        {
            pds++;
            pss++;
        }
}

int main() {
    char *pa = "CHINA", b[10], *pb;
    pb = b;
    cpystr(pa, pb);
    printf("string a = %s\nstring b = %s\n", pa, pb);
}