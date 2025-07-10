#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n, m;
    int c = 0;

    scanf("%d", &n);

    scanf("%d", &m);

    if (m < n)
    {
        printf("Too low!\n");
    }
    else if(m > n)
    {
        printf("Too high!\n");
    }
    else
    {
        printf("perfect!\n");
    }

    return 0;
}
