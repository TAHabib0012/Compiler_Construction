#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, m;
    int c = 0;

    printf("Enter your Target: ");
    scanf("%d", &n);

    printf("Enter your guess: ");
    scanf("%d", &m);
    c++;

    while (m != n) 
    {
        if (m < n) 
        {
            printf("Too low!\n");
        } else {
            printf("Too high!\n");
        }
        printf("Enter your guess: ");
        scanf("%d", &m);
        c++;
    }

    printf("Guessed the correct number %d in %d attempts.\n", n, c);

    return 0;
}
