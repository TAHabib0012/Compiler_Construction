#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, m;
    int c = 0;

    printf("Enter your Target: ");
    scanf("%d", &n);

    printf("Enter your initial starter point: ");
    scanf("%d", &m);

    while (m != n) 
    {
        m++;
        c++;
    }

    printf("Found the correct number %d in %d attempts.\n", n, c);

    return 0;
}
